package B0;

import android.app.Activity;
import android.content.Context;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import java.util.Map;

/* loaded from: classes3.dex */
public class e extends PlatformViewFactory {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f44a;

    /* renamed from: b, reason: collision with root package name */
    public final BinaryMessenger f45b;

    public e(Activity activity, BinaryMessenger binaryMessenger) {
        super(StandardMessageCodec.INSTANCE);
        this.f44a = activity;
        this.f45b = binaryMessenger;
    }

    @Override // io.flutter.plugin.platform.PlatformViewFactory
    public PlatformView create(Context context, int i2, Object obj) {
        return new d(this.f44a, this.f45b, i2, (Map) obj);
    }
}
