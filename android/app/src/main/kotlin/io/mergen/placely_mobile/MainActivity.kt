package io.mergen.placely_mobile

import android.content.Intent
import android.util.Log
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
  private val CHANNEL = "ar_activity"
  private val TAG = "MyActivity"
  private val MODELS = "models"

  override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
    super.configureFlutterEngine(flutterEngine)
    MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
      if (call.method.equals("startArActivity")) {
        val args = (call.arguments) as List<Any>;
        startArActivity(args[0] as List<String>)
      }
    }
  }

  private fun startArActivity(models: List<String>) {
    val intent = Intent(this, ArActivity::class.java)
    intent.putExtra(MODELS, models.toTypedArray())
    startActivity(intent)
  }
}
