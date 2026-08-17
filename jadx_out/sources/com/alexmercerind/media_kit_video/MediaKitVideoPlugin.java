package com.alexmercerind.media_kit_video;

import com.beizi.fusion.widget.ScrollClickView;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;

/* loaded from: classes.dex */
public class MediaKitVideoPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: b, reason: collision with root package name */
    public MethodChannel f1303b;

    /* renamed from: c, reason: collision with root package name */
    public f f1304c;

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "com.alexmercerind/media_kit_video");
        this.f1303b = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.f1304c = new f(flutterPluginBinding.getTextureRegistry());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f1303b.setMethodCallHandler(null);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) throws NumberFormatException {
        String str = methodCall.method;
        str.getClass();
        switch (str) {
            case "VideoOutputManager.SetSurfaceSize":
                this.f1304c.c(Long.parseLong((String) methodCall.argument("handle")), Integer.parseInt((String) methodCall.argument("width")), Integer.parseInt((String) methodCall.argument("height")));
                result.success(null);
                break;
            case "VideoOutputManager.Dispose":
                this.f1304c.b(Long.parseLong((String) methodCall.argument("handle")));
                result.success(null);
                break;
            case "Utils.IsEmulator":
                result.success(Boolean.valueOf(c.a()));
                break;
            case "VideoOutputManager.Create":
                final long j2 = Long.parseLong((String) methodCall.argument("handle"));
                this.f1304c.a(j2, new b() { // from class: com.alexmercerind.media_kit_video.a
                    @Override // com.alexmercerind.media_kit_video.b
                    public final void a(long j3, long j4, int i2, int i3) {
                        MediaKitVideoPlugin mediaKitVideoPlugin = this.f1305a;
                        mediaKitVideoPlugin.f1303b.invokeMethod("VideoOutput.Resize", new HashMap<String, Object>(j2, j3, j4, i2, i3) { // from class: com.alexmercerind.media_kit_video.MediaKitVideoPlugin.1
                            final /* synthetic */ long val$handle;
                            final /* synthetic */ int val$height;
                            final /* synthetic */ long val$id;
                            final /* synthetic */ long val$wid;
                            final /* synthetic */ int val$width;

                            {
                                this.val$handle = j;
                                this.val$id = j3;
                                this.val$wid = j4;
                                this.val$width = i2;
                                this.val$height = i3;
                                put("handle", Long.valueOf(j));
                                put("id", Long.valueOf(j3));
                                put("wid", Long.valueOf(j4));
                                put("rect", new HashMap<String, Object>() { // from class: com.alexmercerind.media_kit_video.MediaKitVideoPlugin.1.1
                                    {
                                        put(ScrollClickView.DIR_LEFT, 0);
                                        put("top", 0);
                                        put("width", Integer.valueOf(AnonymousClass1.this.val$width));
                                        put("height", Integer.valueOf(AnonymousClass1.this.val$height));
                                    }
                                });
                            }
                        });
                    }
                });
                result.success(null);
                break;
            default:
                result.notImplemented();
                break;
        }
    }
}
