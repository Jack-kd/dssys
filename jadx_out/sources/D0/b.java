package D0;

import android.app.Activity;
import android.content.Context;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import java.util.Map;

/* loaded from: classes3.dex */
public class b extends PlatformViewFactory {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f54a;

    /* renamed from: b, reason: collision with root package name */
    public final BinaryMessenger f55b;

    public b(Activity activity, BinaryMessenger binaryMessenger) {
        super(StandardMessageCodec.INSTANCE);
        this.f54a = activity;
        this.f55b = binaryMessenger;
    }

    @Override // io.flutter.plugin.platform.PlatformViewFactory
    public PlatformView create(Context context, int i2, Object obj) {
        return new a(this.f54a, this.f55b, i2, (Map) obj);
    }
}
