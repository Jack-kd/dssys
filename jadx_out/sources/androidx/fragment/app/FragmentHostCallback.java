package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.byazt.pu.TTDownloadField;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import kotlin.Deprecated;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B+\b\u0000\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fB!\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\rB\u0011\b\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u000e¢\u0006\u0004\b\u000b\u0010\u000fJ9\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00028\u0000H&¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0018H\u0016¢\u0006\u0004\b%\u0010&J'\u0010*\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020'2\u0006\u0010)\u001a\u00020\tH\u0016¢\u0006\u0004\b*\u0010+J1\u0010*\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020'2\u0006\u0010)\u001a\u00020\t2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b*\u0010.JS\u00104\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020/2\u0006\u0010)\u001a\u00020\t2\b\u00100\u001a\u0004\u0018\u00010'2\u0006\u00101\u001a\u00020\t2\u0006\u00102\u001a\u00020\t2\u0006\u00103\u001a\u00020\t2\b\u0010-\u001a\u0004\u0018\u00010,H\u0017¢\u0006\u0004\b4\u00105J-\u00107\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001b2\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u00100\u00162\u0006\u0010)\u001a\u00020\tH\u0017¢\u0006\u0004\b7\u00108J\u0017\u0010:\u001a\u00020\u001d2\u0006\u00109\u001a\u00020\u0010H\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u001dH\u0016¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020\tH\u0016¢\u0006\u0004\b>\u0010?J\u0019\u0010B\u001a\u0004\u0018\u00010A2\u0006\u0010@\u001a\u00020\tH\u0016¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020\u001dH\u0016¢\u0006\u0004\bD\u0010=R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0007¢\u0006\f\n\u0004\b\u0004\u0010E\u001a\u0004\bF\u0010GR\u0017\u0010\u0006\u001a\u00020\u00058\u0007¢\u0006\f\n\u0004\b\u0006\u0010H\u001a\u0004\bI\u0010JR\u0017\u0010\b\u001a\u00020\u00078\u0007¢\u0006\f\n\u0004\b\b\u0010K\u001a\u0004\bL\u0010MR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010NR\u0017\u0010P\u001a\u00020O8G¢\u0006\f\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010S¨\u0006T"}, d2 = {"Landroidx/fragment/app/FragmentHostCallback;", "H", "Landroidx/fragment/app/FragmentContainer;", "Landroid/app/Activity;", TTDownloadField.TT_ACTIVITY, "Landroid/content/Context;", com.umeng.analytics.pro.g.f49337X, "Landroid/os/Handler;", "handler", "", "windowAnimations", "<init>", "(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V", "(Landroid/content/Context;Landroid/os/Handler;I)V", "Landroidx/fragment/app/FragmentActivity;", "(Landroidx/fragment/app/FragmentActivity;)V", "", "prefix", "Ljava/io/FileDescriptor;", "fd", "Ljava/io/PrintWriter;", "writer", "", "args", "Lkotlin/j;", "onDump", "(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V", "Landroidx/fragment/app/Fragment;", "fragment", "", "onShouldSaveFragmentState", "(Landroidx/fragment/app/Fragment;)Z", "Landroid/view/LayoutInflater;", "onGetLayoutInflater", "()Landroid/view/LayoutInflater;", "onGetHost", "()Ljava/lang/Object;", "onSupportInvalidateOptionsMenu", "()V", "Landroid/content/Intent;", "intent", "requestCode", "onStartActivityFromFragment", "(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V", "Landroid/os/Bundle;", "options", "(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V", "Landroid/content/IntentSender;", "fillInIntent", "flagsMask", "flagsValues", "extraFlags", "onStartIntentSenderFromFragment", "(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V", "permissions", "onRequestPermissionsFromFragment", "(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V", "permission", "onShouldShowRequestPermissionRationale", "(Ljava/lang/String;)Z", "onHasWindowAnimations", "()Z", "onGetWindowAnimations", "()I", "id", "Landroid/view/View;", "onFindViewById", "(I)Landroid/view/View;", "onHasView", "Landroid/app/Activity;", "getActivity", "()Landroid/app/Activity;", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "I", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "getFragmentManager", "()Landroidx/fragment/app/FragmentManager;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class FragmentHostCallback<H> extends FragmentContainer {

    @Nullable
    private final Activity activity;

    @NotNull
    private final Context context;

    @NotNull
    private final FragmentManager fragmentManager;

    @NotNull
    private final Handler handler;
    private final int windowAnimations;

    public FragmentHostCallback(@Nullable Activity activity, @NotNull Context context, @NotNull Handler handler, int i2) {
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(handler, "handler");
        this.activity = activity;
        this.context = context;
        this.handler = handler;
        this.windowAnimations = i2;
        this.fragmentManager = new FragmentManagerImpl();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public final Activity getActivity() {
        return this.activity;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final FragmentManager getFragmentManager() {
        return this.fragmentManager;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final Handler getHandler() {
        return this.handler;
    }

    public void onDump(@NotNull String prefix, @Nullable FileDescriptor fd, @NotNull PrintWriter writer, @Nullable String[] args) {
        kotlin.jvm.internal.j.e(prefix, "prefix");
        kotlin.jvm.internal.j.e(writer, "writer");
    }

    @Override // androidx.fragment.app.FragmentContainer
    @Nullable
    public View onFindViewById(int id) {
        return null;
    }

    public abstract H onGetHost();

    @NotNull
    public LayoutInflater onGetLayoutInflater() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.context);
        kotlin.jvm.internal.j.d(layoutInflaterFrom, "from(context)");
        return layoutInflaterFrom;
    }

    /* renamed from: onGetWindowAnimations, reason: from getter */
    public int getWindowAnimations() {
        return this.windowAnimations;
    }

    @Override // androidx.fragment.app.FragmentContainer
    public boolean onHasView() {
        return true;
    }

    public boolean onHasWindowAnimations() {
        return true;
    }

    @Deprecated(message = "Have your FragmentHostCallback implement {@link ActivityResultRegistryOwner}\n      to allow Fragments to use\n      {@link Fragment#registerForActivityResult(ActivityResultContract, ActivityResultCallback)}\n      with {@link RequestMultiplePermissions}. This method will still be called when Fragments\n      call the deprecated <code>requestPermissions()</code> method.")
    public void onRequestPermissionsFromFragment(@NotNull Fragment fragment, @NotNull String[] permissions, int requestCode) {
        kotlin.jvm.internal.j.e(fragment, "fragment");
        kotlin.jvm.internal.j.e(permissions, "permissions");
    }

    public boolean onShouldSaveFragmentState(@NotNull Fragment fragment) {
        kotlin.jvm.internal.j.e(fragment, "fragment");
        return true;
    }

    public boolean onShouldShowRequestPermissionRationale(@NotNull String permission) {
        kotlin.jvm.internal.j.e(permission, "permission");
        return false;
    }

    public void onStartActivityFromFragment(@NotNull Fragment fragment, @NotNull Intent intent, int requestCode) {
        kotlin.jvm.internal.j.e(fragment, "fragment");
        kotlin.jvm.internal.j.e(intent, "intent");
        onStartActivityFromFragment(fragment, intent, requestCode, null);
    }

    @Deprecated(message = "Have your FragmentHostCallback implement {@link ActivityResultRegistryOwner}\n      to allow Fragments to use\n      {@link Fragment#registerForActivityResult(ActivityResultContract, ActivityResultCallback)}\n      with {@link StartIntentSenderForResult}. This method will still be called when Fragments\n      call the deprecated <code>startIntentSenderForResult()</code> method.")
    public void onStartIntentSenderFromFragment(@NotNull Fragment fragment, @NotNull IntentSender intent, int requestCode, @Nullable Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags, @Nullable Bundle options) throws IntentSender.SendIntentException {
        kotlin.jvm.internal.j.e(fragment, "fragment");
        kotlin.jvm.internal.j.e(intent, "intent");
        if (requestCode != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        Activity activity = this.activity;
        if (activity == null) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        ActivityCompat.startIntentSenderForResult(activity, intent, requestCode, fillInIntent, flagsMask, flagsValues, extraFlags, options);
    }

    public void onSupportInvalidateOptionsMenu() {
    }

    public void onStartActivityFromFragment(@NotNull Fragment fragment, @NotNull Intent intent, int requestCode, @Nullable Bundle options) {
        kotlin.jvm.internal.j.e(fragment, "fragment");
        kotlin.jvm.internal.j.e(intent, "intent");
        if (requestCode != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        ContextCompat.startActivity(this.context, intent, options);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FragmentHostCallback(@NotNull Context context, @NotNull Handler handler, int i2) {
        this(context instanceof Activity ? (Activity) context : null, context, handler, i2);
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(handler, "handler");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FragmentHostCallback(@NotNull FragmentActivity activity) {
        this(activity, activity, new Handler(), 0);
        kotlin.jvm.internal.j.e(activity, "activity");
    }
}
