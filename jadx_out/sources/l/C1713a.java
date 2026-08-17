package l;

import com.alexmercerind.mediakitandroidhelper.MediaKitAndroidHelper;
import io.flutter.embedding.engine.plugins.FlutterPlugin;

/* renamed from: l.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1713a implements FlutterPlugin {
    static {
        try {
            System.loadLibrary("mpv");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        try {
            MediaKitAndroidHelper.setApplicationContextJava(flutterPluginBinding.getApplicationContext());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
    }
}
