package io.mergen.placely_mobile

import android.net.Uri
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import com.google.ar.core.Anchor
import com.google.ar.sceneform.AnchorNode
import com.google.ar.sceneform.assets.RenderableSource
import com.google.ar.sceneform.rendering.ModelRenderable
import com.google.ar.sceneform.rendering.Renderable
import com.google.ar.sceneform.ux.ArFragment
import com.google.ar.sceneform.ux.TransformableNode

class ArActivity : AppCompatActivity() {
  private lateinit var arFragment: ArFragment

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.ar_activity)

    arFragment = supportFragmentManager.findFragmentById(R.id.sceneform_fragment_view) as ArFragment

    val modelLink = "https://github.com/yudiz-solutions/runtime_ar_android/raw/master/model/model.gltf"

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

