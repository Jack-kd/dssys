package r0;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.view.WindowManager;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

/* renamed from: r0.a, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1761a implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {

    /* renamed from: b, reason: collision with root package name */
    public MethodChannel f52724b;

    /* renamed from: c, reason: collision with root package name */
    public AudioManager f52725c;

    /* renamed from: d, reason: collision with root package name */
    public Activity f52726d;

    /* renamed from: e, reason: collision with root package name */
    public Context f52727e;

    public final float a() {
        float f2 = this.f52726d.getWindow().getAttributes().screenBrightness;
        if (f2 >= 0.0f) {
            return f2;
        }
        try {
            return Settings.System.getInt(this.f52727e.getContentResolver(), "screen_brightness") / 255.0f;
        } catch (Settings.SettingNotFoundException e2) {
            e2.printStackTrace();
            return 1.0f;
        }
    }

    public final float b() {
        if (this.f52725c == null) {
            this.f52725c = (AudioManager) this.f52726d.getSystemService(MediaFormat.KEY_AUDIO);
        }
        return this.f52725c.getStreamVolume(3) / this.f52725c.getStreamMaxVolume(3);
    }

    public final void c(double d2) {
        if (this.f52725c == null) {
            this.f52725c = (AudioManager) this.f52726d.getSystemService(MediaFormat.KEY_AUDIO);
        }
        this.f52725c.setStreamVolume(3, (int) (this.f52725c.getStreamMaxVolume(3) * d2), 1);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        this.f52726d = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "brightness_volume");
        this.f52724b = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.f52727e = flutterPluginBinding.getApplicationContext();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f52724b.setMethodCallHandler(null);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String str = methodCall.method;
        str.getClass();
        switch (str) {
            case "keepOn":
                if (((Boolean) methodCall.argument("on")).booleanValue()) {
                    this.f52726d.getWindow().addFlags(128);
                } else {
                    this.f52726d.getWindow().clearFlags(128);
                }
                result.success(null);
                break;
            case "volume":
                result.success(Float.valueOf(b()));
                break;
            case "isKeptOn":
                result.success(Boolean.valueOf((this.f52726d.getWindow().getAttributes().flags & 128) != 0));
                break;
            case "freeDiskSpace":
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                result.success(Float.valueOf(Long.valueOf(statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong()).longValue() / 1048576.0f));
                break;
            case "brightness":
                result.success(Float.valueOf(a()));
                break;
            case "setVolume":
                c(((Double) methodCall.argument("volume")).doubleValue());
                break;
            case "totalDiskSpace":
                StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getPath());
                result.success(Float.valueOf(Long.valueOf(statFs2.getBlockSizeLong() * statFs2.getBlockCountLong()).longValue() / 1048576.0f));
                break;
            case "setBrightness":
                double dDoubleValue = ((Double) methodCall.argument("brightness")).doubleValue();
                WindowManager.LayoutParams attributes = this.f52726d.getWindow().getAttributes();
                attributes.screenBrightness = (float) dDoubleValue;
                this.f52726d.getWindow().setAttributes(attributes);
                result.success(null);
                break;
            case "resetCustomBrightness":
                WindowManager.LayoutParams attributes2 = this.f52726d.getWindow().getAttributes();
                attributes2.screenBrightness = -1.0f;
                this.f52726d.getWindow().setAttributes(attributes2);
                result.success(null);
                break;
            default:
                result.notImplemented();
                break;
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
    }
}
