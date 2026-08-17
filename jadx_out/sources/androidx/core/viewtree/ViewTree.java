package androidx.core.viewtree;

import android.view.View;
import android.view.ViewParent;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u0000¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroid/view/View;", "Landroid/view/ViewParent;", "parent", "Lkotlin/j;", "setViewTreeDisjointParent", "(Landroid/view/View;Landroid/view/ViewParent;)V", "getParentOrViewTreeDisjointParent", "(Landroid/view/View;)Landroid/view/ViewParent;", "core-viewtree_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "ViewTree")
/* loaded from: classes.dex */
public final class ViewTree {
    @Nullable
    public static final ViewParent getParentOrViewTreeDisjointParent(@NotNull View view) {
        j.e(view, "<this>");
        ViewParent parent = view.getParent();
        if (parent != null) {
            return parent;
        }
        Object tag = view.getTag(R.id.view_tree_disjoint_parent);
        if (tag instanceof ViewParent) {
            return (ViewParent) tag;
        }
        return null;
    }

    public static final void setViewTreeDisjointParent(@NotNull View view, @Nullable ViewParent viewParent) {
        j.e(view, "<this>");
        view.setTag(R.id.view_tree_disjoint_parent, viewParent);
    }
}
