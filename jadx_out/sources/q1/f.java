package q1;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.anythink.core.e.m;
import com.umeng.analytics.pro.cl;
import com.umeng.analytics.pro.ek;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.collections.m;
import kotlin.jvm.internal.j;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00172\u00020\u00012\u00020\u0002:\u0001\"B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\n\u0010\tJ\u001f\u0010\u000f\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\"\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010$R\u0018\u0010(\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010'¨\u0006)"}, d2 = {"Lq1/f;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "binding", "Lkotlin/j;", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "", "c", "()Ljava/lang/String;", "Landroid/content/pm/PackageInfo;", "info", "", "d", "(Landroid/content/pm/PackageInfo;)J", "Landroid/content/pm/PackageManager;", com.anythink.core.common.m.f.bg, "b", "(Landroid/content/pm/PackageManager;)Ljava/lang/String;", "", "sig", "e", "([B)Ljava/lang/String;", "bytes", "a", "Landroid/content/Context;", "Landroid/content/Context;", "applicationContext", "Lio/flutter/plugin/common/MethodChannel;", "Lio/flutter/plugin/common/MethodChannel;", "methodChannel", "package_info_plus_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class f implements MethodChannel.MethodCallHandler, FlutterPlugin {

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public Context applicationContext;

    /* renamed from: c, reason: collision with root package name and from kotlin metadata */
    public MethodChannel methodChannel;

    public final String a(byte[] bytes) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] cArr2 = new char[bytes.length * 2];
        int length = bytes.length;
        for (int i2 = 0; i2 < length; i2++) {
            byte b3 = bytes[i2];
            int i3 = i2 * 2;
            cArr2[i3] = cArr[(b3 & 255) >>> 4];
            cArr2[i3 + 1] = cArr[b3 & ek.f49295m];
        }
        return new String(cArr2);
    }

    public final String b(PackageManager pm) {
        if (Build.VERSION.SDK_INT < 28) {
            Context context = this.applicationContext;
            j.b(context);
            Signature[] signatureArr = pm.getPackageInfo(context.getPackageName(), 64).signatures;
            if (signatureArr != null && signatureArr.length != 0 && m.E(signatureArr) != null) {
                byte[] byteArray = ((Signature) m.E(signatureArr)).toByteArray();
                j.d(byteArray, "toByteArray(...)");
                return e(byteArray);
            }
            return null;
        }
        Context context2 = this.applicationContext;
        j.b(context2);
        SigningInfo signingInfo = pm.getPackageInfo(context2.getPackageName(), 134217728).signingInfo;
        if (signingInfo == null) {
            return null;
        }
        if (signingInfo.hasMultipleSigners()) {
            Signature[] apkContentsSigners = signingInfo.getApkContentsSigners();
            j.d(apkContentsSigners, "getApkContentsSigners(...)");
            byte[] byteArray2 = ((Signature) m.E(apkContentsSigners)).toByteArray();
            j.d(byteArray2, "toByteArray(...)");
            return e(byteArray2);
        }
        Signature[] signingCertificateHistory = signingInfo.getSigningCertificateHistory();
        j.d(signingCertificateHistory, "getSigningCertificateHistory(...)");
        byte[] byteArray3 = ((Signature) m.E(signingCertificateHistory)).toByteArray();
        j.d(byteArray3, "toByteArray(...)");
        return e(byteArray3);
    }

    public final String c() {
        Context context = this.applicationContext;
        j.b(context);
        PackageManager packageManager = context.getPackageManager();
        Context context2 = this.applicationContext;
        j.b(context2);
        String packageName = context2.getPackageName();
        return Build.VERSION.SDK_INT >= 30 ? packageManager.getInstallSourceInfo(packageName).getInitiatingPackageName() : packageManager.getInstallerPackageName(packageName);
    }

    public final long d(PackageInfo info) {
        return Build.VERSION.SDK_INT >= 28 ? info.getLongVersionCode() : info.versionCode;
    }

    public final String e(byte[] sig) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(sig);
        byte[] bArrDigest = messageDigest.digest();
        j.b(bArrDigest);
        return a(bArrDigest);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        j.e(binding, "binding");
        this.applicationContext = binding.getApplicationContext();
        MethodChannel methodChannel = new MethodChannel(binding.getBinaryMessenger(), "dev.fluttercommunity.plus/package_info");
        this.methodChannel = methodChannel;
        j.b(methodChannel);
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        j.e(binding, "binding");
        this.applicationContext = null;
        MethodChannel methodChannel = this.methodChannel;
        j.b(methodChannel);
        methodChannel.setMethodCallHandler(null);
        this.methodChannel = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) throws PackageManager.NameNotFoundException {
        String string;
        CharSequence charSequenceLoadLabel;
        j.e(call, "call");
        j.e(result, "result");
        try {
            if (!j.a(call.method, "getAll")) {
                result.notImplemented();
                return;
            }
            Context context = this.applicationContext;
            j.b(context);
            PackageManager packageManager = context.getPackageManager();
            Context context2 = this.applicationContext;
            j.b(context2);
            PackageInfo packageInfo = packageManager.getPackageInfo(context2.getPackageName(), 0);
            j.b(packageManager);
            String strB = b(packageManager);
            String strC = c();
            long j2 = packageInfo.firstInstallTime;
            long j3 = packageInfo.lastUpdateTime;
            HashMap map = new HashMap();
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            String str = "";
            if (applicationInfo == null || (charSequenceLoadLabel = applicationInfo.loadLabel(packageManager)) == null || (string = charSequenceLoadLabel.toString()) == null) {
                string = "";
            }
            map.put(cl.f49061p, string);
            Context context3 = this.applicationContext;
            j.b(context3);
            map.put("packageName", context3.getPackageName());
            String str2 = packageInfo.versionName;
            if (str2 != null) {
                str = str2;
            }
            map.put(cl.f49059n, str);
            j.b(packageInfo);
            map.put("buildNumber", String.valueOf(d(packageInfo)));
            if (strB != null) {
                map.put("buildSignature", strB);
            }
            if (strC != null) {
                map.put("installerStore", strC);
            }
            map.put("installTime", String.valueOf(j2));
            map.put(m.a.ac, String.valueOf(j3));
            result.success(map);
        } catch (PackageManager.NameNotFoundException e2) {
            result.error("Name not found", e2.getMessage(), null);
        }
    }
}
