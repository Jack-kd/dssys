package r1;

import android.app.Activity;
import dev.fluttercommunity.plus.wakelock.NoActivityException;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.Nullable;

/* renamed from: r1.a, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1762a {

    /* renamed from: a, reason: collision with root package name */
    public Activity f52728a;

    public final boolean a() {
        Activity activity = this.f52728a;
        j.b(activity);
        return (activity.getWindow().getAttributes().flags & 128) != 0;
    }

    public final defpackage.a b() throws NoActivityException {
        if (this.f52728a != null) {
            return new defpackage.a(Boolean.valueOf(a()));
        }
        throw new NoActivityException();
    }

    public final void c(Activity activity) {
        this.f52728a = activity;
    }

    public final void d(defpackage.b message) throws NoActivityException {
        j.e(message, "message");
        Activity activity = this.f52728a;
        if (activity == null) {
            throw new NoActivityException();
        }
        j.b(activity);
        boolean zA = a();
        Boolean boolA = message.a();
        j.b(boolA);
        if (boolA.booleanValue()) {
            if (zA) {
                return;
            }
            activity.getWindow().addFlags(128);
        } else if (zA) {
            activity.getWindow().clearFlags(128);
        }
    }

    @Nullable
    public final Activity getActivity() {
        return this.f52728a;
    }
}
