package io.mergen.placely_mobile

import android.net.Uri
import android.os.Bundle
import android.os.StrictMode
import android.os.StrictMode.ThreadPolicy
import androidx.appcompat.app.AppCompatActivity
import com.google.ar.core.Anchor
import com.google.ar.sceneform.AnchorNode
import com.google.ar.sceneform.assets.RenderableSource
import com.google.ar.sceneform.rendering.ModelRenderable
import com.google.ar.sceneform.rendering.Renderable
import com.google.ar.sceneform.ux.ArFragment
import com.google.ar.sceneform.ux.TransformableNode
import java.io.File
import java.io.FileOutputStream
import java.net.URL


class ArActivity : AppCompatActivity() {
  private lateinit var arFragment: ArFragment
  private val MODELS = "models"
  private val HOST = "http://192.168.1.7:4000/placely/files/"

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.ar_activity)

    val policy = ThreadPolicy.Builder().permitAll().build()

    StrictMode.setThreadPolicy(policy)

    arFragment = supportFragmentManager.findFragmentById(R.id.sceneform_fragment_view) as ArFragment

    val models = intent.getStringArrayExtra(MODELS)

    var modelLink = ""

    for (model in models) {
      if (model.contains(".gltf")) {
        modelLink = HOST + model
      }
    }

    arFragment.setOnTapArPlaneListener { hitResult, plane, _ ->
      val anchor = hitResult.createAnchor()
      placeObject(arFragment, anchor, modelLink)
    }
  }

  private fun placeObject(fragment: ArFragment, anchor: Anchor, modelLink: String) {
    ModelRenderable.builder()
        .setSource(this, RenderableSource.builder().setSource(this, Uri.parse(modelLink),
            RenderableSource.SourceType.GLTF2).build())
        .setRegistryId(modelLink)
        .build()
        .thenAccept { renderable ->
          addNodeToScene(fragment, anchor, renderable)
        }
  }

  private fun addNodeToScene(fragment: ArFragment, anchor: Anchor, renderable: Renderable) {
    val anchorNode = AnchorNode(anchor)
    val transformableNode = TransformableNode(fragment.transformationSystem)
    transformableNode.renderable = renderable
    transformableNode.setParent(anchorNode)
    fragment.arSceneView.scene.addChild(anchorNode)
    transformableNode.select()
  }
}

