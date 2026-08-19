package androidx.core.app;

import android.app.PictureInPictureParams;
import android.app.RemoteAction;
import android.graphics.Rect;
import android.os.Build;
import android.util.Rational;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import com.anythink.core.common.f.g;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0004\"#$%Bs\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010 \u001a\u00020!H\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0013R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0013R\u0013\u0010\f\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0015R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001e¨\u0006&"}, d2 = {"Landroidx/core/app/PictureInPictureParamsCompat;", "", "isEnabled", "", "aspectRatio", "Landroid/util/Rational;", "actions", "", "Landroid/app/RemoteAction;", "sourceRectHint", "Landroid/graphics/Rect;", "isSeamlessResizeEnabled", "closeAction", "expandedAspectRatio", g.a.f3271h, "", "subTitle", "<init>", "(ZLandroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZLandroid/app/RemoteAction;Landroid/util/Rational;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V", "()Z", "getAspectRatio", "()Landroid/util/Rational;", "getActions", "()Ljava/util/List;", "getSourceRectHint", "()Landroid/graphics/Rect;", "getCloseAction", "()Landroid/app/RemoteAction;", "getExpandedAspectRatio", "getTitle", "()Ljava/lang/CharSequence;", "getSubTitle", "toPictureInPictureParams", "Landroid/app/PictureInPictureParams;", "Builder", "Api26Impl", "Api31Impl", "Api33Impl", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PictureInPictureParamsCompat {

    @NotNull
    private final List<RemoteAction> actions;

    @Nullable
    private final Rational aspectRatio;

    @Nullable
    private final RemoteAction closeAction;

    @Nullable
    private final Rational expandedAspectRatio;
    private final boolean isEnabled;
    private final boolean isSeamlessResizeEnabled;

    @Nullable
    private final Rect sourceRectHint;

    @Nullable
    private final CharSequence subTitle;

    @Nullable
    private final CharSequence title;

    @RequiresApi(26)
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0007¨\u0006\r"}, d2 = {"Landroidx/core/app/PictureInPictureParamsCompat$Api26Impl;", "", "<init>", "()V", "create", "Landroid/app/PictureInPictureParams;", "aspectRatio", "Landroid/util/Rational;", "actions", "", "Landroid/app/RemoteAction;", "sourceRectHint", "Landroid/graphics/Rect;", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Api26Impl {

        @NotNull
        public static final Api26Impl INSTANCE = new Api26Impl();

        private Api26Impl() {
        }

        @JvmStatic
        @NotNull
        public static final PictureInPictureParams create(@Nullable Rational aspectRatio, @NotNull List<RemoteAction> actions, @Nullable Rect sourceRectHint) {
            kotlin.jvm.internal.j.e(actions, "actions");
            PictureInPictureParams pictureInPictureParamsBuild = new PictureInPictureParams.Builder().setAspectRatio(aspectRatio).setActions(actions).setSourceRectHint(sourceRectHint).build();
            kotlin.jvm.internal.j.d(pictureInPictureParamsBuild, "build(...)");
            return pictureInPictureParamsBuild;
        }
    }

    @RequiresApi(31)
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÃ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J:\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007¨\u0006\u0010"}, d2 = {"Landroidx/core/app/PictureInPictureParamsCompat$Api31Impl;", "", "<init>", "()V", "create", "Landroid/app/PictureInPictureParams;", "aspectRatio", "Landroid/util/Rational;", "actions", "", "Landroid/app/RemoteAction;", "sourceRectHint", "Landroid/graphics/Rect;", "autoEnterEnabled", "", "seamlessResizeEnabled", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Api31Impl {

        @NotNull
        public static final Api31Impl INSTANCE = new Api31Impl();

        private Api31Impl() {
        }

        @JvmStatic
        @NotNull
        public static final PictureInPictureParams create(@Nullable Rational aspectRatio, @NotNull List<RemoteAction> actions, @Nullable Rect sourceRectHint, boolean autoEnterEnabled, boolean seamlessResizeEnabled) {
            kotlin.jvm.internal.j.e(actions, "actions");
            PictureInPictureParams pictureInPictureParamsBuild = new PictureInPictureParams.Builder().setAspectRatio(aspectRatio).setActions(actions).setSourceRectHint(sourceRectHint).setAutoEnterEnabled(autoEnterEnabled).setSeamlessResizeEnabled(seamlessResizeEnabled).build();
            kotlin.jvm.internal.j.d(pictureInPictureParamsBuild, "build(...)");
            return pictureInPictureParamsBuild;
        }
    }

    @RequiresApi(33)
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\u0002\bÃ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003Jb\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0007¨\u0006\u0015"}, d2 = {"Landroidx/core/app/PictureInPictureParamsCompat$Api33Impl;", "", "<init>", "()V", "create", "Landroid/app/PictureInPictureParams;", "aspectRatio", "Landroid/util/Rational;", "actions", "", "Landroid/app/RemoteAction;", "sourceRectHint", "Landroid/graphics/Rect;", "autoEnterEnabled", "", "seamlessResizeEnabled", "expandedAspectRatio", "closeAction", g.a.f3271h, "", "subTitle", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Api33Impl {

        @NotNull
        public static final Api33Impl INSTANCE = new Api33Impl();

        private Api33Impl() {
        }

        @JvmStatic
        @NotNull
        public static final PictureInPictureParams create(@Nullable Rational aspectRatio, @NotNull List<RemoteAction> actions, @Nullable Rect sourceRectHint, boolean autoEnterEnabled, boolean seamlessResizeEnabled, @Nullable Rational expandedAspectRatio, @Nullable RemoteAction closeAction, @Nullable CharSequence title, @Nullable CharSequence subTitle) {
            kotlin.jvm.internal.j.e(actions, "actions");
            PictureInPictureParams pictureInPictureParamsBuild = new PictureInPictureParams.Builder().setAspectRatio(aspectRatio).setActions(actions).setSourceRectHint(sourceRectHint).setAutoEnterEnabled(autoEnterEnabled).setSeamlessResizeEnabled(seamlessResizeEnabled).setExpandedAspectRatio(expandedAspectRatio).setCloseAction(closeAction).setTitle(title).setSubtitle(subTitle).build();
            kotlin.jvm.internal.j.d(pictureInPictureParamsBuild, "build(...)");
            return pictureInPictureParamsBuild;
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0014\u0010\u0015\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u001b\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0006\u0010\u001c\u001a\u00020\u001dR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Landroidx/core/app/PictureInPictureParamsCompat$Builder;", "", "<init>", "()V", "enabled", "", "aspectRatio", "Landroid/util/Rational;", "actions", "", "Landroid/app/RemoteAction;", "sourceRectHint", "Landroid/graphics/Rect;", "seamlessResizeEnabled", "closeAction", "expandedAspectRatio", g.a.f3271h, "", "subTitle", "setEnabled", "setAspectRatio", "setActions", "setSourceRectHint", "setSeamlessResizeEnabled", "setCloseAction", "setExpandedAspectRatio", "setTitle", "setSubTitle", "build", "Landroidx/core/app/PictureInPictureParamsCompat;", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nPictureInPictureParamsCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PictureInPictureParamsCompat.kt\nandroidx/core/app/PictureInPictureParamsCompat$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,289:1\n1#2:290\n*E\n"})
    public static final class Builder {

        @Nullable
        private Rational aspectRatio;

        @Nullable
        private RemoteAction closeAction;

        @Nullable
        private Rational expandedAspectRatio;
        private boolean seamlessResizeEnabled;

        @Nullable
        private Rect sourceRectHint;

        @Nullable
        private CharSequence subTitle;

        @Nullable
        private CharSequence title;
        private boolean enabled = true;

        @NotNull
        private List<RemoteAction> actions = kotlin.collections.q.l();

        @NotNull
        public final PictureInPictureParamsCompat build() {
            return new PictureInPictureParamsCompat(this.enabled, this.aspectRatio, this.actions, this.sourceRectHint, this.seamlessResizeEnabled, this.closeAction, this.expandedAspectRatio, this.title, this.subTitle);
        }

        @NotNull
        public final Builder setActions(@NotNull List<RemoteAction> actions) {
            kotlin.jvm.internal.j.e(actions, "actions");
            this.actions = actions;
            return this;
        }

        @NotNull
        public final Builder setAspectRatio(@Nullable Rational aspectRatio) {
            this.aspectRatio = aspectRatio;
            return this;
        }

        @NotNull
        public final Builder setCloseAction(@Nullable RemoteAction closeAction) {
            this.closeAction = closeAction;
            return this;
        }

        @NotNull
        public final Builder setEnabled(boolean enabled) {
            this.enabled = enabled;
            return this;
        }

        @NotNull
        public final Builder setExpandedAspectRatio(@Nullable Rational expandedAspectRatio) {
            this.expandedAspectRatio = expandedAspectRatio;
            return this;
        }

        @NotNull
        public final Builder setSeamlessResizeEnabled(boolean seamlessResizeEnabled) {
            this.seamlessResizeEnabled = seamlessResizeEnabled;
            return this;
        }

        @NotNull
        public final Builder setSourceRectHint(@Nullable Rect sourceRectHint) {
            this.sourceRectHint = sourceRectHint;
            return this;
        }

        @NotNull
        public final Builder setSubTitle(@Nullable CharSequence subTitle) {
            this.subTitle = subTitle;
            return this;
        }

        @NotNull
        public final Builder setTitle(@Nullable CharSequence title) {
            this.title = title;
            return this;
        }
    }

    public PictureInPictureParamsCompat() {
        this(false, null, null, null, false, null, null, null, null, 511, null);
    }

    @NotNull
    public final List<RemoteAction> getActions() {
        return this.actions;
    }

    @Nullable
    public final Rational getAspectRatio() {
        return this.aspectRatio;
    }

    @Nullable
    public final RemoteAction getCloseAction() {
        return this.closeAction;
    }

    @Nullable
    public final Rational getExpandedAspectRatio() {
        return this.expandedAspectRatio;
    }

    @Nullable
    public final Rect getSourceRectHint() {
        return this.sourceRectHint;
    }

    @Nullable
    public final CharSequence getSubTitle() {
        return this.subTitle;
    }

    @Nullable
    public final CharSequence getTitle() {
        return this.title;
    }

    /* renamed from: isEnabled, reason: from getter */
    public final boolean getIsEnabled() {
        return this.isEnabled;
    }

    /* renamed from: isSeamlessResizeEnabled, reason: from getter */
    public final boolean getIsSeamlessResizeEnabled() {
        return this.isSeamlessResizeEnabled;
    }

    @NonNull
    @NotNull
    @RequiresApi(26)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final PictureInPictureParams toPictureInPictureParams() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 >= 33 ? Api33Impl.create(this.aspectRatio, this.actions, this.sourceRectHint, this.isEnabled, this.isSeamlessResizeEnabled, this.expandedAspectRatio, this.closeAction, this.title, this.subTitle) : i2 >= 31 ? Api31Impl.create(this.aspectRatio, this.actions, this.sourceRectHint, this.isEnabled, this.isSeamlessResizeEnabled) : Api26Impl.create(this.aspectRatio, this.actions, this.sourceRectHint);
    }

    public PictureInPictureParamsCompat(boolean z2, @Nullable Rational rational, @NotNull List<RemoteAction> actions, @Nullable Rect rect, boolean z3, @Nullable RemoteAction remoteAction, @Nullable Rational rational2, @Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        kotlin.jvm.internal.j.e(actions, "actions");
        this.isEnabled = z2;
        this.aspectRatio = rational;
        this.actions = actions;
        this.sourceRectHint = rect;
        this.isSeamlessResizeEnabled = z3;
        this.closeAction = remoteAction;
        this.expandedAspectRatio = rational2;
        this.title = charSequence;
        this.subTitle = charSequence2;
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
        	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public /* synthetic */ PictureInPictureParamsCompat(boolean r2, android.util.Rational r3, java.util.List r4, android.graphics.Rect r5, boolean r6, android.app.RemoteAction r7, android.util.Rational r8, java.lang.CharSequence r9, java.lang.CharSequence r10, int r11, kotlin.jvm.internal.f r12) {
        /*
            r1 = this;
            r12 = r11 & 1
            if (r12 == 0) goto L5
            r2 = 1
        L5:
            r12 = r11 & 2
            r0 = 0
            if (r12 == 0) goto Lb
            r3 = r0
        Lb:
            r12 = r11 & 4
            if (r12 == 0) goto L13
            java.util.List r4 = kotlin.collections.q.l()
        L13:
            r12 = r11 & 8
            if (r12 == 0) goto L18
            r5 = r0
        L18:
            r12 = r11 & 16
            if (r12 == 0) goto L1d
            r6 = 0
        L1d:
            r12 = r11 & 32
            if (r12 == 0) goto L22
            r7 = r0
        L22:
            r12 = r11 & 64
            if (r12 == 0) goto L27
            r8 = r0
        L27:
            r12 = r11 & 128(0x80, float:1.8E-43)
            if (r12 == 0) goto L2c
            r9 = r0
        L2c:
            r11 = r11 & 256(0x100, float:3.59E-43)
            if (r11 == 0) goto L3b
            r12 = r0
            r10 = r8
            r11 = r9
            r8 = r6
            r9 = r7
            r6 = r4
            r7 = r5
            r4 = r2
            r5 = r3
            r3 = r1
            goto L45
        L3b:
            r12 = r10
            r11 = r9
            r9 = r7
            r10 = r8
            r7 = r5
            r8 = r6
            r5 = r3
            r6 = r4
            r3 = r1
            r4 = r2
        L45:
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.PictureInPictureParamsCompat.<init>(boolean, android.util.Rational, java.util.List, android.graphics.Rect, boolean, android.app.RemoteAction, android.util.Rational, java.lang.CharSequence, java.lang.CharSequence, int, kotlin.jvm.internal.f):void");
    }
}
