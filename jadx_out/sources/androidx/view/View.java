package androidx.view;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.j;
import kotlin.sequences.n;
import kotlin.sequences.q;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u001b\u0010\u0006\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0015\u0010\t\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroid/view/View;", "Landroidx/activity/FullyDrawnReporterOwner;", "fullyDrawnReporterOwner", "Lkotlin/j;", "set", "(Landroid/view/View;Landroidx/activity/FullyDrawnReporterOwner;)V", "setViewTreeFullyDrawnReporterOwner", "get", "(Landroid/view/View;)Landroidx/activity/FullyDrawnReporterOwner;", "findViewTreeFullyDrawnReporterOwner", "activity_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "ViewTreeFullyDrawnReporterOwner")
/* renamed from: androidx.activity.ViewTreeFullyDrawnReporterOwner, reason: from Kotlin metadata */
/* loaded from: classes.dex */
public final class View {
    @JvmName(name = "get")
    @Nullable
    public static final FullyDrawnReporterOwner get(@NotNull android.view.View view) {
        j.e(view, "<this>");
        return (FullyDrawnReporterOwner) q.t(q.A(n.g(view, new Function1<android.view.View, android.view.View>() { // from class: androidx.activity.ViewTreeFullyDrawnReporterOwner$findViewTreeFullyDrawnReporterOwner$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final View invoke(@NotNull View it) {
                j.e(it, "it");
                Object parent = it.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            }
        }), new Function1<android.view.View, FullyDrawnReporterOwner>() { // from class: androidx.activity.ViewTreeFullyDrawnReporterOwner$findViewTreeFullyDrawnReporterOwner$2
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final FullyDrawnReporterOwner invoke(@NotNull View it) {
                j.e(it, "it");
                Object tag = it.getTag(R.id.report_drawn);
                if (tag instanceof FullyDrawnReporterOwner) {
                    return (FullyDrawnReporterOwner) tag;
                }
                return null;
            }
        }));
    }

    @JvmName(name = "set")
    public static final void set(@NotNull android.view.View view, @NotNull FullyDrawnReporterOwner fullyDrawnReporterOwner) {
        j.e(view, "<this>");
        j.e(fullyDrawnReporterOwner, "fullyDrawnReporterOwner");
        view.setTag(R.id.report_drawn, fullyDrawnReporterOwner);
    }
}
