package H0;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.core.content.ContextCompat;
import com.flutter.task.flutter_curl_task.DownloadService;
import com.sigmob.sdk.base.common.C1244a;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.loader.FlutterLoader;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.view.FlutterCallbackInformation;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

/* loaded from: classes3.dex */
public class d implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: f, reason: collision with root package name */
    public static d f100f;

    /* renamed from: b, reason: collision with root package name */
    public MethodChannel f101b;

    /* renamed from: c, reason: collision with root package name */
    public MethodChannel f102c;

    /* renamed from: d, reason: collision with root package name */
    public Context f103d;

    /* renamed from: e, reason: collision with root package name */
    public Long f104e;

    public static /* synthetic */ void a(d dVar, List list) {
        MethodChannel methodChannel = dVar.f102c;
        if (methodChannel != null) {
            methodChannel.invokeMethod("updateProgress", list);
        }
    }

    public static d d() {
        return f100f;
    }

    public final void b(MethodCall methodCall, MethodChannel.Result result) {
        String str = (String) methodCall.argument("task_id");
        Intent intent = new Intent(this.f103d, (Class<?>) DownloadService.class);
        intent.setAction("cancel");
        intent.putExtra("task_id", str);
        ContextCompat.startForegroundService(this.f103d, intent);
    }

    public final void c(MethodCall methodCall, MethodChannel.Result result) {
        if (this.f102c == null) {
            FlutterCallbackInformation flutterCallbackInformationLookupCallbackInformation = FlutterCallbackInformation.lookupCallbackInformation(this.f104e.longValue());
            FlutterLoader flutterLoader = new FlutterLoader();
            flutterLoader.startInitialization(this.f103d);
            flutterLoader.ensureInitializationComplete(this.f103d, null);
            FlutterEngine flutterEngine = new FlutterEngine(this.f103d);
            flutterEngine.getDartExecutor().executeDartEntrypoint(new DartExecutor.DartEntrypoint(flutterLoader.findAppBundlePath(), flutterCallbackInformationLookupCallbackInformation.callbackLibraryPath, flutterCallbackInformationLookupCallbackInformation.callbackName));
            MethodChannel methodChannel = new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), "dispatcher_channel");
            this.f102c = methodChannel;
            methodChannel.setMethodCallHandler(this);
        }
        String str = (String) methodCall.argument("url");
        Object objArgument = methodCall.argument("plus_url");
        Objects.requireNonNull(objArgument);
        result.success(h(str, Boolean.parseBoolean(objArgument.toString()), (String) methodCall.argument("saved_dir"), (String) methodCall.argument("file_name"), (String) methodCall.argument("headers")));
    }

    public final void e(MethodCall methodCall, MethodChannel.Result result) {
        this.f104e = Long.valueOf(((Number) ((List) methodCall.arguments).get(0)).longValue());
        f100f = this;
        result.success(null);
    }

    public final void f(MethodCall methodCall, MethodChannel.Result result) {
        String str = (String) methodCall.argument("task_id");
        String str2 = (String) methodCall.argument("saved_dir");
        String str3 = (String) methodCall.argument("file_name");
        Intent intent = new Intent(this.f103d, (Class<?>) DownloadService.class);
        intent.setAction("remove");
        intent.putExtra("task_id", str);
        intent.putExtra("saved_dir", str2);
        intent.putExtra("file_name", str3);
        ContextCompat.startForegroundService(this.f103d, intent);
        result.success(null);
    }

    public final void g(MethodCall methodCall, MethodChannel.Result result) {
        String str = (String) methodCall.argument("task_id");
        String str2 = (String) methodCall.argument("url");
        boolean zContains = str.contains(".plus");
        String str3 = (String) methodCall.argument("saved_dir");
        String str4 = (String) methodCall.argument("file_name");
        String str5 = (String) methodCall.argument("headers");
        Intent intent = new Intent(this.f103d, (Class<?>) DownloadService.class);
        intent.setAction("cancel");
        intent.putExtra("task_id", str);
        ContextCompat.startForegroundService(this.f103d, intent);
        result.success(h(str2, zContains, str3, str4, str5));
    }

    public final String h(String str, boolean z2, String str2, String str3, String str4) {
        String strReplace = UUID.randomUUID().toString().replace("-", "");
        if (z2) {
            strReplace = strReplace + ".plus";
        }
        Intent intent = new Intent(this.f103d, (Class<?>) DownloadService.class);
        intent.setAction("start");
        intent.putExtra("task_id", strReplace);
        intent.putExtra("url", str);
        intent.putExtra("plus_url", z2);
        intent.putExtra("saved_dir", str2);
        intent.putExtra("file_name", str3);
        intent.putExtra("headers", str4);
        ContextCompat.startForegroundService(this.f103d, intent);
        return strReplace;
    }

    public void i(final List list) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: H0.c
            @Override // java.lang.Runnable
            public final void run() {
                d.a(this.f98b, list);
            }
        });
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "main_channel");
        this.f101b = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.f103d = flutterPluginBinding.getApplicationContext();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f103d = null;
        MethodChannel methodChannel = this.f101b;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
            this.f101b = null;
        }
        MethodChannel methodChannel2 = this.f102c;
        if (methodChannel2 != null) {
            methodChannel2.setMethodCallHandler(null);
            this.f102c = null;
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if (methodCall.method.equals("init")) {
            e(methodCall, result);
            return;
        }
        if (methodCall.method.equals("didInitDispatcherChannel")) {
            return;
        }
        if (methodCall.method.equals("enqueue")) {
            c(methodCall, result);
            return;
        }
        if (methodCall.method.equals("cancel")) {
            b(methodCall, result);
            return;
        }
        if (methodCall.method.equals(C1244a.f35682j)) {
            b(methodCall, result);
            return;
        }
        if (methodCall.method.equals("resume")) {
            return;
        }
        if (methodCall.method.equals("retry")) {
            g(methodCall, result);
        } else if (methodCall.method.equals("remove")) {
            f(methodCall, result);
        } else {
            result.notImplemented();
        }
    }
}
