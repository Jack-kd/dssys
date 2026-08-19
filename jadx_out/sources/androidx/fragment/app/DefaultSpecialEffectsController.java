package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.collection.ArrayMap;
import androidx.core.app.SharedElementCallback;
import androidx.core.os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.FragmentAnim;
import androidx.fragment.app.SpecialEffectsController;
import androidx.view.BackEventCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.y;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u000f\b\u0000\u0018\u00002\u00020\u0001:\b%&'()*+,B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000e\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u0006H\u0003¢\u0006\u0004\b\u000e\u0010\u000bJ9\u0010\u0015\u001a\u00020\t2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00062\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J-\u0010\u001c\u001a\u00020\t*\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u00172\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ+\u0010!\u001a\u00020\t2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u001e2\u0006\u0010 \u001a\u00020\u0019H\u0002¢\u0006\u0004\b!\u0010\"J%\u0010#\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b#\u0010$¨\u0006-"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController;", "Landroidx/fragment/app/SpecialEffectsController;", "Landroid/view/ViewGroup;", "container", "<init>", "(Landroid/view/ViewGroup;)V", "", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "operations", "Lkotlin/j;", "syncAnimations", "(Ljava/util/List;)V", "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "animationInfos", "collectAnimEffects", "Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;", "transitionInfos", "", "isPop", "firstOut", "lastIn", "createTransitionEffect", "(Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)V", "Landroidx/collection/ArrayMap;", "", "Landroid/view/View;", "", "names", "retainMatchingViews", "(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V", "", "namedViews", "view", "findNamedViews", "(Ljava/util/Map;Landroid/view/View;)V", "collectEffects", "(Ljava/util/List;Z)V", "AnimationEffect", "AnimationInfo", "AnimatorEffect", "Api24Impl", "Api26Impl", "SpecialEffectsInfo", "TransitionEffect", "TransitionInfo", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDefaultSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1129:1\n288#2,2:1130\n533#2,6:1132\n1360#2:1138\n1446#2,5:1139\n819#2:1144\n847#2,2:1145\n766#2:1147\n857#2,2:1148\n1789#2,3:1150\n1726#2,3:1153\n1855#2,2:1156\n*S KotlinDebug\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController\n*L\n52#1:1130,2\n58#1:1132,6\n117#1:1138\n117#1:1139,5\n190#1:1144\n190#1:1145,2\n193#1:1147\n193#1:1148,2\n197#1:1150,3\n355#1:1153,3\n366#1:1156,2\n*E\n"})
/* loaded from: classes.dex */
public final class DefaultSpecialEffectsController extends SpecialEffectsController {

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationEffect;", "Landroidx/fragment/app/SpecialEffectsController$Effect;", "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "animationInfo", "<init>", "(Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V", "Landroid/view/ViewGroup;", "container", "Lkotlin/j;", "onCommit", "(Landroid/view/ViewGroup;)V", "onCancel", "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "getAnimationInfo", "()Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class AnimationEffect extends SpecialEffectsController.Effect {

        @NotNull
        private final AnimationInfo animationInfo;

        public AnimationEffect(@NotNull AnimationInfo animationInfo) {
            kotlin.jvm.internal.j.e(animationInfo, "animationInfo");
            this.animationInfo = animationInfo;
        }

        @NotNull
        public final AnimationInfo getAnimationInfo() {
            return this.animationInfo;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public void onCancel(@NotNull ViewGroup container) {
            kotlin.jvm.internal.j.e(container, "container");
            SpecialEffectsController.Operation operation = this.animationInfo.getOperation();
            View view = operation.getFragment().mView;
            view.clearAnimation();
            container.endViewTransition(view);
            this.animationInfo.getOperation().completeEffect(this);
            if (FragmentManager.isLoggingEnabled(2)) {
                operation.toString();
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public void onCommit(@NotNull ViewGroup container) {
            kotlin.jvm.internal.j.e(container, "container");
            if (this.animationInfo.isVisibilityUnchanged()) {
                this.animationInfo.getOperation().completeEffect(this);
                return;
            }
            Context context = container.getContext();
            SpecialEffectsController.Operation operation = this.animationInfo.getOperation();
            View view = operation.getFragment().mView;
            AnimationInfo animationInfo = this.animationInfo;
            kotlin.jvm.internal.j.d(context, "context");
            FragmentAnim.AnimationOrAnimator animation = animationInfo.getAnimation(context);
            if (animation == null) {
                throw new IllegalStateException("Required value was null.");
            }
            Animation animation2 = animation.animation;
            if (animation2 == null) {
                throw new IllegalStateException("Required value was null.");
            }
            if (operation.getFinalState() != SpecialEffectsController.Operation.State.REMOVED) {
                view.startAnimation(animation2);
                this.animationInfo.getOperation().completeEffect(this);
                return;
            }
            container.startViewTransition(view);
            FragmentAnim.EndViewTransitionAnimation endViewTransitionAnimation = new FragmentAnim.EndViewTransitionAnimation(animation2, container, view);
            endViewTransitionAnimation.setAnimationListener(new DefaultSpecialEffectsController$AnimationEffect$onCommit$1(operation, container, view, this));
            view.startAnimation(endViewTransitionAnimation);
            if (FragmentManager.isLoggingEnabled(2)) {
                operation.toString();
            }
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\n\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\fR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "operation", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "isPop", "", "(Landroidx/fragment/app/SpecialEffectsController$Operation;Z)V", "animation", "Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;", "isAnimLoaded", "getAnimation", com.umeng.analytics.pro.g.f49337X, "Landroid/content/Context;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class AnimationInfo extends SpecialEffectsInfo {

        @Nullable
        private FragmentAnim.AnimationOrAnimator animation;
        private boolean isAnimLoaded;
        private final boolean isPop;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnimationInfo(@NotNull SpecialEffectsController.Operation operation, boolean z2) {
            super(operation);
            kotlin.jvm.internal.j.e(operation, "operation");
            this.isPop = z2;
        }

        @Nullable
        public final FragmentAnim.AnimationOrAnimator getAnimation(@NotNull Context context) {
            kotlin.jvm.internal.j.e(context, "context");
            if (this.isAnimLoaded) {
                return this.animation;
            }
            FragmentAnim.AnimationOrAnimator animationOrAnimatorLoadAnimation = FragmentAnim.loadAnimation(context, getOperation().getFragment(), getOperation().getFinalState() == SpecialEffectsController.Operation.State.VISIBLE, this.isPop);
            this.animation = animationOrAnimatorLoadAnimation;
            this.isAnimLoaded = true;
            return animationOrAnimatorLoadAnimation;
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\nJ\u0017\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0010\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R$\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$AnimatorEffect;", "Landroidx/fragment/app/SpecialEffectsController$Effect;", "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "animatorInfo", "<init>", "(Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V", "Landroid/view/ViewGroup;", "container", "Lkotlin/j;", "onStart", "(Landroid/view/ViewGroup;)V", "Landroidx/activity/BackEventCompat;", "backEvent", "onProgress", "(Landroidx/activity/BackEventCompat;Landroid/view/ViewGroup;)V", "onCommit", "onCancel", "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "getAnimatorInfo", "()Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "Landroid/animation/AnimatorSet;", "animator", "Landroid/animation/AnimatorSet;", "getAnimator", "()Landroid/animation/AnimatorSet;", "setAnimator", "(Landroid/animation/AnimatorSet;)V", "", "isSeekingSupported", "()Z", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class AnimatorEffect extends SpecialEffectsController.Effect {

        @Nullable
        private AnimatorSet animator;

        @NotNull
        private final AnimationInfo animatorInfo;

        public AnimatorEffect(@NotNull AnimationInfo animatorInfo) {
            kotlin.jvm.internal.j.e(animatorInfo, "animatorInfo");
            this.animatorInfo = animatorInfo;
        }

        @Nullable
        public final AnimatorSet getAnimator() {
            return this.animator;
        }

        @NotNull
        public final AnimationInfo getAnimatorInfo() {
            return this.animatorInfo;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        /* renamed from: isSeekingSupported */
        public boolean getIsSeekingSupported() {
            return true;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public void onCancel(@NotNull ViewGroup container) {
            kotlin.jvm.internal.j.e(container, "container");
            AnimatorSet animatorSet = this.animator;
            if (animatorSet == null) {
                this.animatorInfo.getOperation().completeEffect(this);
                return;
            }
            SpecialEffectsController.Operation operation = this.animatorInfo.getOperation();
            if (!operation.getIsSeeking()) {
                animatorSet.end();
            } else if (Build.VERSION.SDK_INT >= 26) {
                Api26Impl.INSTANCE.reverse(animatorSet);
            }
            if (FragmentManager.isLoggingEnabled(2)) {
                operation.toString();
                operation.getIsSeeking();
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public void onCommit(@NotNull ViewGroup container) {
            kotlin.jvm.internal.j.e(container, "container");
            SpecialEffectsController.Operation operation = this.animatorInfo.getOperation();
            AnimatorSet animatorSet = this.animator;
            if (animatorSet == null) {
                this.animatorInfo.getOperation().completeEffect(this);
                return;
            }
            animatorSet.start();
            if (FragmentManager.isLoggingEnabled(2)) {
                Objects.toString(operation);
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public void onProgress(@NotNull BackEventCompat backEvent, @NotNull ViewGroup container) {
            kotlin.jvm.internal.j.e(backEvent, "backEvent");
            kotlin.jvm.internal.j.e(container, "container");
            SpecialEffectsController.Operation operation = this.animatorInfo.getOperation();
            AnimatorSet animatorSet = this.animator;
            if (animatorSet == null) {
                this.animatorInfo.getOperation().completeEffect(this);
                return;
            }
            if (Build.VERSION.SDK_INT < 34 || !operation.getFragment().mTransitioning) {
                return;
            }
            if (FragmentManager.isLoggingEnabled(2)) {
                operation.toString();
            }
            long j2 = Api24Impl.INSTANCE.totalDuration(animatorSet);
            long progress = (long) (backEvent.getProgress() * j2);
            if (progress == 0) {
                progress = 1;
            }
            if (progress == j2) {
                progress = j2 - 1;
            }
            if (FragmentManager.isLoggingEnabled(2)) {
                animatorSet.toString();
                operation.toString();
            }
            Api26Impl.INSTANCE.setCurrentPlayTime(animatorSet, progress);
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public void onStart(@NotNull final ViewGroup container) {
            final AnimatorEffect animatorEffect;
            kotlin.jvm.internal.j.e(container, "container");
            if (this.animatorInfo.isVisibilityUnchanged()) {
                return;
            }
            Context context = container.getContext();
            AnimationInfo animationInfo = this.animatorInfo;
            kotlin.jvm.internal.j.d(context, "context");
            FragmentAnim.AnimationOrAnimator animation = animationInfo.getAnimation(context);
            this.animator = animation != null ? animation.animator : null;
            final SpecialEffectsController.Operation operation = this.animatorInfo.getOperation();
            Fragment fragment = operation.getFragment();
            final boolean z2 = operation.getFinalState() == SpecialEffectsController.Operation.State.GONE;
            final View view = fragment.mView;
            container.startViewTransition(view);
            AnimatorSet animatorSet = this.animator;
            if (animatorSet != null) {
                animatorEffect = this;
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$AnimatorEffect$onStart$1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(@NotNull Animator anim) {
                        kotlin.jvm.internal.j.e(anim, "anim");
                        container.endViewTransition(view);
                        if (z2) {
                            SpecialEffectsController.Operation.State finalState = operation.getFinalState();
                            View viewToAnimate = view;
                            kotlin.jvm.internal.j.d(viewToAnimate, "viewToAnimate");
                            finalState.applyState(viewToAnimate, container);
                        }
                        animatorEffect.getAnimatorInfo().getOperation().completeEffect(animatorEffect);
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Objects.toString(operation);
                        }
                    }
                });
            } else {
                animatorEffect = this;
            }
            AnimatorSet animatorSet2 = animatorEffect.animator;
            if (animatorSet2 != null) {
                animatorSet2.setTarget(view);
            }
        }

        public final void setAnimator(@Nullable AnimatorSet animatorSet) {
            this.animator = animatorSet;
        }
    }

    @RequiresApi(24)
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$Api24Impl;", "", "()V", "totalDuration", "", "animatorSet", "Landroid/animation/AnimatorSet;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Api24Impl {

        @NotNull
        public static final Api24Impl INSTANCE = new Api24Impl();

        private Api24Impl() {
        }

        @DoNotInline
        public final long totalDuration(@NotNull AnimatorSet animatorSet) {
            kotlin.jvm.internal.j.e(animatorSet, "animatorSet");
            return animatorSet.getTotalDuration();
        }
    }

    @RequiresApi(26)
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$Api26Impl;", "", "<init>", "()V", "Landroid/animation/AnimatorSet;", "animatorSet", "Lkotlin/j;", "reverse", "(Landroid/animation/AnimatorSet;)V", "", "time", "setCurrentPlayTime", "(Landroid/animation/AnimatorSet;J)V", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Api26Impl {

        @NotNull
        public static final Api26Impl INSTANCE = new Api26Impl();

        private Api26Impl() {
        }

        @DoNotInline
        public final void reverse(@NotNull AnimatorSet animatorSet) {
            kotlin.jvm.internal.j.e(animatorSet, "animatorSet");
            animatorSet.reverse();
        }

        @DoNotInline
        public final void setCurrentPlayTime(@NotNull AnimatorSet animatorSet, long time) {
            kotlin.jvm.internal.j.e(animatorSet, "animatorSet");
            animatorSet.setCurrentPlayTime(time);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "", "operation", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "(Landroidx/fragment/app/SpecialEffectsController$Operation;)V", "isVisibilityUnchanged", "", "()Z", "getOperation", "()Landroidx/fragment/app/SpecialEffectsController$Operation;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static class SpecialEffectsInfo {

        @NotNull
        private final SpecialEffectsController.Operation operation;

        public SpecialEffectsInfo(@NotNull SpecialEffectsController.Operation operation) {
            kotlin.jvm.internal.j.e(operation, "operation");
            this.operation = operation;
        }

        @NotNull
        public final SpecialEffectsController.Operation getOperation() {
            return this.operation;
        }

        public final boolean isVisibilityUnchanged() {
            View view = this.operation.getFragment().mView;
            SpecialEffectsController.Operation.State stateAsOperationState = view != null ? SpecialEffectsController.Operation.State.INSTANCE.asOperationState(view) : null;
            SpecialEffectsController.Operation.State finalState = this.operation.getFinalState();
            if (stateAsOperationState == finalState) {
                return true;
            }
            SpecialEffectsController.Operation.State state = SpecialEffectsController.Operation.State.VISIBLE;
            return (stateAsOperationState == state || finalState == state) ? false : true;
        }
    }

    @Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0002\u0018\u00002\u00020\u0001Bß\u0001\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000e\u0012\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000e\u0012\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00120\fj\b\u0012\u0004\u0012\u00020\u0012`\u000e\u0012\u0016\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00120\fj\b\u0012\u0004\u0012\u00020\u0012`\u000e\u0012\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\r0\u0011\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\r0\u0011\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJG\u0010\u001f\u001a\u001e\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000e\u0012\u0004\u0012\u00020\n0\u001e2\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u001f\u0010 J=\u0010%\u001a\u00020#2\u0016\u0010!\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000e2\u0006\u0010\u001d\u001a\u00020\u001c2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\"H\u0002¢\u0006\u0004\b%\u0010&J/\u0010)\u001a\u00020#2\u0016\u0010'\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000e2\u0006\u0010(\u001a\u00020\rH\u0002¢\u0006\u0004\b)\u0010*J\u0017\u0010+\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b+\u0010,J\u001f\u0010/\u001a\u00020#2\u0006\u0010.\u001a\u00020-2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b/\u00100J\u0017\u00101\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b1\u0010,J\u0017\u00102\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b2\u0010,R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u00103\u001a\u0004\b4\u00105R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u00106\u001a\u0004\b7\u00108R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0007\u00106\u001a\u0004\b9\u00108R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010:\u001a\u0004\b;\u0010<R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010=\u001a\u0004\b>\u0010?R'\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010@\u001a\u0004\bA\u0010BR'\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000e8\u0006¢\u0006\f\n\u0004\b\u0010\u0010@\u001a\u0004\bC\u0010BR#\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u00118\u0006¢\u0006\f\n\u0004\b\u0013\u0010D\u001a\u0004\bE\u0010FR'\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00120\fj\b\u0012\u0004\u0012\u00020\u0012`\u000e8\u0006¢\u0006\f\n\u0004\b\u0014\u0010@\u001a\u0004\bG\u0010BR'\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00120\fj\b\u0012\u0004\u0012\u00020\u0012`\u000e8\u0006¢\u0006\f\n\u0004\b\u0015\u0010@\u001a\u0004\bH\u0010BR#\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\r0\u00118\u0006¢\u0006\f\n\u0004\b\u0016\u0010D\u001a\u0004\bI\u0010FR#\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\r0\u00118\u0006¢\u0006\f\n\u0004\b\u0017\u0010D\u001a\u0004\bJ\u0010FR\u0017\u0010\u0019\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010K\u001a\u0004\b\u0019\u0010LR\u001d\u0010N\u001a\u00020M8\u0006¢\u0006\u0012\n\u0004\bN\u0010O\u0012\u0004\bR\u0010S\u001a\u0004\bP\u0010QR$\u0010T\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010=\u001a\u0004\bU\u0010?\"\u0004\bV\u0010WR\u0014\u0010X\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bX\u0010LR\u0011\u0010Z\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\bY\u0010L¨\u0006["}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect;", "Landroidx/fragment/app/SpecialEffectsController$Effect;", "", "Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;", "transitionInfos", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "firstOut", "lastIn", "Landroidx/fragment/app/FragmentTransitionImpl;", "transitionImpl", "", "sharedElementTransition", "Ljava/util/ArrayList;", "Landroid/view/View;", "Lkotlin/collections/ArrayList;", "sharedElementFirstOutViews", "sharedElementLastInViews", "Landroidx/collection/ArrayMap;", "", "sharedElementNameMapping", "enteringNames", "exitingNames", "firstOutViews", "lastInViews", "", "isPop", "<init>", "(Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Z)V", "Landroid/view/ViewGroup;", "container", "Lkotlin/Pair;", "createMergedTransition", "(Landroid/view/ViewGroup;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Lkotlin/Pair;", "enteringViews", "Lkotlin/Function0;", "Lkotlin/j;", "executeTransition", "runTransition", "(Ljava/util/ArrayList;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;)V", "transitioningViews", "view", "captureTransitioningViews", "(Ljava/util/ArrayList;Landroid/view/View;)V", "onStart", "(Landroid/view/ViewGroup;)V", "Landroidx/activity/BackEventCompat;", "backEvent", "onProgress", "(Landroidx/activity/BackEventCompat;Landroid/view/ViewGroup;)V", "onCommit", "onCancel", "Ljava/util/List;", "getTransitionInfos", "()Ljava/util/List;", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "getFirstOut", "()Landroidx/fragment/app/SpecialEffectsController$Operation;", "getLastIn", "Landroidx/fragment/app/FragmentTransitionImpl;", "getTransitionImpl", "()Landroidx/fragment/app/FragmentTransitionImpl;", "Ljava/lang/Object;", "getSharedElementTransition", "()Ljava/lang/Object;", "Ljava/util/ArrayList;", "getSharedElementFirstOutViews", "()Ljava/util/ArrayList;", "getSharedElementLastInViews", "Landroidx/collection/ArrayMap;", "getSharedElementNameMapping", "()Landroidx/collection/ArrayMap;", "getEnteringNames", "getExitingNames", "getFirstOutViews", "getLastInViews", "Z", "()Z", "Landroidx/core/os/CancellationSignal;", "transitionSignal", "Landroidx/core/os/CancellationSignal;", "getTransitionSignal", "()Landroidx/core/os/CancellationSignal;", "getTransitionSignal$annotations", "()V", "controller", "getController", "setController", "(Ljava/lang/Object;)V", "isSeekingSupported", "getTransitioning", "transitioning", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDefaultSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1129:1\n1726#2,3:1130\n1726#2,3:1133\n1855#2,2:1136\n1549#2:1138\n1620#2,3:1139\n1855#2,2:1142\n1855#2,2:1145\n1549#2:1147\n1620#2,3:1148\n1855#2,2:1151\n1#3:1144\n*S KotlinDebug\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect\n*L\n722#1:1130,3\n731#1:1133,3\n739#1:1136,2\n768#1:1138\n768#1:1139,3\n768#1:1142,2\n824#1:1145,2\n845#1:1147\n845#1:1148,3\n845#1:1151,2\n*E\n"})
    public static final class TransitionEffect extends SpecialEffectsController.Effect {

        @Nullable
        private Object controller;

        @NotNull
        private final ArrayList<String> enteringNames;

        @NotNull
        private final ArrayList<String> exitingNames;

        @Nullable
        private final SpecialEffectsController.Operation firstOut;

        @NotNull
        private final ArrayMap<String, View> firstOutViews;
        private final boolean isPop;

        @Nullable
        private final SpecialEffectsController.Operation lastIn;

        @NotNull
        private final ArrayMap<String, View> lastInViews;

        @NotNull
        private final ArrayList<View> sharedElementFirstOutViews;

        @NotNull
        private final ArrayList<View> sharedElementLastInViews;

        @NotNull
        private final ArrayMap<String, String> sharedElementNameMapping;

        @Nullable
        private final Object sharedElementTransition;

        @NotNull
        private final FragmentTransitionImpl transitionImpl;

        @NotNull
        private final List<TransitionInfo> transitionInfos;

        @NotNull
        private final CancellationSignal transitionSignal;

        public TransitionEffect(@NotNull List<TransitionInfo> transitionInfos, @Nullable SpecialEffectsController.Operation operation, @Nullable SpecialEffectsController.Operation operation2, @NotNull FragmentTransitionImpl transitionImpl, @Nullable Object obj, @NotNull ArrayList<View> sharedElementFirstOutViews, @NotNull ArrayList<View> sharedElementLastInViews, @NotNull ArrayMap<String, String> sharedElementNameMapping, @NotNull ArrayList<String> enteringNames, @NotNull ArrayList<String> exitingNames, @NotNull ArrayMap<String, View> firstOutViews, @NotNull ArrayMap<String, View> lastInViews, boolean z2) {
            kotlin.jvm.internal.j.e(transitionInfos, "transitionInfos");
            kotlin.jvm.internal.j.e(transitionImpl, "transitionImpl");
            kotlin.jvm.internal.j.e(sharedElementFirstOutViews, "sharedElementFirstOutViews");
            kotlin.jvm.internal.j.e(sharedElementLastInViews, "sharedElementLastInViews");
            kotlin.jvm.internal.j.e(sharedElementNameMapping, "sharedElementNameMapping");
            kotlin.jvm.internal.j.e(enteringNames, "enteringNames");
            kotlin.jvm.internal.j.e(exitingNames, "exitingNames");
            kotlin.jvm.internal.j.e(firstOutViews, "firstOutViews");
            kotlin.jvm.internal.j.e(lastInViews, "lastInViews");
            this.transitionInfos = transitionInfos;
            this.firstOut = operation;
            this.lastIn = operation2;
            this.transitionImpl = transitionImpl;
            this.sharedElementTransition = obj;
            this.sharedElementFirstOutViews = sharedElementFirstOutViews;
            this.sharedElementLastInViews = sharedElementLastInViews;
            this.sharedElementNameMapping = sharedElementNameMapping;
            this.enteringNames = enteringNames;
            this.exitingNames = exitingNames;
            this.firstOutViews = firstOutViews;
            this.lastInViews = lastInViews;
            this.isPop = z2;
            this.transitionSignal = new CancellationSignal();
        }

        private final void captureTransitioningViews(ArrayList<View> transitioningViews, View view) {
            if (!(view instanceof ViewGroup)) {
                if (transitioningViews.contains(view)) {
                    return;
                }
                transitioningViews.add(view);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            if (ViewGroupCompat.isTransitionGroup(viewGroup)) {
                if (transitioningViews.contains(view)) {
                    return;
                }
                transitioningViews.add(view);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View child = viewGroup.getChildAt(i2);
                if (child.getVisibility() == 0) {
                    kotlin.jvm.internal.j.d(child, "child");
                    captureTransitioningViews(transitioningViews, child);
                }
            }
        }

        private final Pair<ArrayList<View>, Object> createMergedTransition(ViewGroup container, SpecialEffectsController.Operation lastIn, final SpecialEffectsController.Operation firstOut) {
            final SpecialEffectsController.Operation operation = lastIn;
            View view = new View(container.getContext());
            final Rect rect = new Rect();
            Iterator<TransitionInfo> it = this.transitionInfos.iterator();
            boolean z2 = false;
            View view2 = null;
            while (it.hasNext()) {
                if (it.next().hasSharedElementTransition() && firstOut != null && operation != null && !this.sharedElementNameMapping.isEmpty() && this.sharedElementTransition != null) {
                    FragmentTransition.callSharedElementStartEnd(operation.getFragment(), firstOut.getFragment(), this.isPop, this.firstOutViews, true);
                    OneShotPreDrawListener.add(container, new Runnable() { // from class: androidx.fragment.app.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            DefaultSpecialEffectsController.TransitionEffect.createMergedTransition$lambda$12(operation, firstOut, this);
                        }
                    });
                    this.sharedElementFirstOutViews.addAll(this.firstOutViews.values());
                    if (!this.exitingNames.isEmpty()) {
                        String str = this.exitingNames.get(0);
                        kotlin.jvm.internal.j.d(str, "exitingNames[0]");
                        view2 = this.firstOutViews.get(str);
                        this.transitionImpl.setEpicenter(this.sharedElementTransition, view2);
                    }
                    this.sharedElementLastInViews.addAll(this.lastInViews.values());
                    if (!this.enteringNames.isEmpty()) {
                        String str2 = this.enteringNames.get(0);
                        kotlin.jvm.internal.j.d(str2, "enteringNames[0]");
                        final View view3 = this.lastInViews.get(str2);
                        if (view3 != null) {
                            final FragmentTransitionImpl fragmentTransitionImpl = this.transitionImpl;
                            OneShotPreDrawListener.add(container, new Runnable() { // from class: androidx.fragment.app.d
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DefaultSpecialEffectsController.TransitionEffect.createMergedTransition$lambda$13(fragmentTransitionImpl, view3, rect);
                                }
                            });
                            z2 = true;
                        }
                    }
                    this.transitionImpl.setSharedElementTargets(this.sharedElementTransition, view, this.sharedElementFirstOutViews);
                    FragmentTransitionImpl fragmentTransitionImpl2 = this.transitionImpl;
                    Object obj = this.sharedElementTransition;
                    fragmentTransitionImpl2.scheduleRemoveTargets(obj, null, null, null, null, obj, this.sharedElementLastInViews);
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator<TransitionInfo> it2 = this.transitionInfos.iterator();
            Object objMergeTransitionsTogether = null;
            Object objMergeTransitionsTogether2 = null;
            while (it2.hasNext()) {
                TransitionInfo next = it2.next();
                SpecialEffectsController.Operation operation2 = next.getOperation();
                Object objCloneTransition = this.transitionImpl.cloneTransition(next.getTransition());
                if (objCloneTransition != null) {
                    final ArrayList<View> arrayList2 = new ArrayList<>();
                    boolean z3 = z2;
                    View view4 = operation2.getFragment().mView;
                    Iterator<TransitionInfo> it3 = it2;
                    kotlin.jvm.internal.j.d(view4, "operation.fragment.mView");
                    captureTransitioningViews(arrayList2, view4);
                    if (this.sharedElementTransition != null && (operation2 == firstOut || operation2 == operation)) {
                        if (operation2 == firstOut) {
                            arrayList2.removeAll(y.e0(this.sharedElementFirstOutViews));
                        } else {
                            arrayList2.removeAll(y.e0(this.sharedElementLastInViews));
                        }
                    }
                    if (arrayList2.isEmpty()) {
                        this.transitionImpl.addTarget(objCloneTransition, view);
                    } else {
                        this.transitionImpl.addTargets(objCloneTransition, arrayList2);
                        this.transitionImpl.scheduleRemoveTargets(objCloneTransition, objCloneTransition, arrayList2, null, null, null, null);
                        if (operation2.getFinalState() == SpecialEffectsController.Operation.State.GONE) {
                            operation2.setAwaitingContainerChanges(false);
                            ArrayList<View> arrayList3 = new ArrayList<>(arrayList2);
                            arrayList3.remove(operation2.getFragment().mView);
                            this.transitionImpl.scheduleHideFragmentView(objCloneTransition, operation2.getFragment().mView, arrayList3);
                            OneShotPreDrawListener.add(container, new Runnable() { // from class: androidx.fragment.app.e
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DefaultSpecialEffectsController.TransitionEffect.createMergedTransition$lambda$14(arrayList2);
                                }
                            });
                        }
                    }
                    if (operation2.getFinalState() == SpecialEffectsController.Operation.State.VISIBLE) {
                        arrayList.addAll(arrayList2);
                        if (z3) {
                            this.transitionImpl.setEpicenter(objCloneTransition, rect);
                        }
                        if (FragmentManager.isLoggingEnabled(2)) {
                            objCloneTransition.toString();
                            int size = arrayList2.size();
                            int i2 = 0;
                            while (i2 < size) {
                                View transitioningViews = arrayList2.get(i2);
                                i2++;
                                kotlin.jvm.internal.j.d(transitioningViews, "transitioningViews");
                                Objects.toString(transitioningViews);
                            }
                        }
                    } else {
                        this.transitionImpl.setEpicenter(objCloneTransition, view2);
                        if (FragmentManager.isLoggingEnabled(2)) {
                            objCloneTransition.toString();
                            int size2 = arrayList2.size();
                            int i3 = 0;
                            while (i3 < size2) {
                                View transitioningViews2 = arrayList2.get(i3);
                                i3++;
                                kotlin.jvm.internal.j.d(transitioningViews2, "transitioningViews");
                                Objects.toString(transitioningViews2);
                            }
                        }
                    }
                    if (next.getIsOverlapAllowed()) {
                        objMergeTransitionsTogether = this.transitionImpl.mergeTransitionsTogether(objMergeTransitionsTogether, objCloneTransition, null);
                    } else {
                        objMergeTransitionsTogether2 = this.transitionImpl.mergeTransitionsTogether(objMergeTransitionsTogether2, objCloneTransition, null);
                    }
                    operation = lastIn;
                    z2 = z3;
                    it2 = it3;
                } else {
                    operation = lastIn;
                }
            }
            Object objMergeTransitionsInSequence = this.transitionImpl.mergeTransitionsInSequence(objMergeTransitionsTogether, objMergeTransitionsTogether2, this.sharedElementTransition);
            if (FragmentManager.isLoggingEnabled(2)) {
                Objects.toString(objMergeTransitionsInSequence);
            }
            return new Pair<>(arrayList, objMergeTransitionsInSequence);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void createMergedTransition$lambda$12(SpecialEffectsController.Operation operation, SpecialEffectsController.Operation operation2, TransitionEffect this$0) {
            kotlin.jvm.internal.j.e(this$0, "this$0");
            FragmentTransition.callSharedElementStartEnd(operation.getFragment(), operation2.getFragment(), this$0.isPop, this$0.lastInViews, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void createMergedTransition$lambda$13(FragmentTransitionImpl impl, View view, Rect lastInEpicenterRect) {
            kotlin.jvm.internal.j.e(impl, "$impl");
            kotlin.jvm.internal.j.e(lastInEpicenterRect, "$lastInEpicenterRect");
            impl.getBoundsOnScreen(view, lastInEpicenterRect);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void createMergedTransition$lambda$14(ArrayList transitioningViews) {
            kotlin.jvm.internal.j.e(transitioningViews, "$transitioningViews");
            FragmentTransition.setViewVisibility(transitioningViews, 4);
        }

        public static /* synthetic */ void getTransitionSignal$annotations() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onCommit$lambda$11$lambda$10(SpecialEffectsController.Operation operation, TransitionEffect this$0) {
            kotlin.jvm.internal.j.e(operation, "$operation");
            kotlin.jvm.internal.j.e(this$0, "this$0");
            if (FragmentManager.isLoggingEnabled(2)) {
                Objects.toString(operation);
            }
            operation.completeEffect(this$0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onStart$lambda$6$lambda$4(Ref$ObjectRef seekCancelLambda) {
            kotlin.jvm.internal.j.e(seekCancelLambda, "$seekCancelLambda");
            Function0 function0 = (Function0) seekCancelLambda.element;
            if (function0 != null) {
                function0.invoke();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onStart$lambda$6$lambda$5(SpecialEffectsController.Operation operation, TransitionEffect this$0) {
            kotlin.jvm.internal.j.e(operation, "$operation");
            kotlin.jvm.internal.j.e(this$0, "this$0");
            if (FragmentManager.isLoggingEnabled(2)) {
                Objects.toString(operation);
            }
            operation.completeEffect(this$0);
        }

        private final void runTransition(ArrayList<View> enteringViews, ViewGroup container, Function0<kotlin.j> executeTransition) {
            FragmentTransition.setViewVisibility(enteringViews, 4);
            ArrayList<String> arrayListPrepareSetNameOverridesReordered = this.transitionImpl.prepareSetNameOverridesReordered(this.sharedElementLastInViews);
            if (FragmentManager.isLoggingEnabled(2)) {
                ArrayList<View> arrayList = this.sharedElementFirstOutViews;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    View sharedElementFirstOutViews = arrayList.get(i2);
                    i2++;
                    kotlin.jvm.internal.j.d(sharedElementFirstOutViews, "sharedElementFirstOutViews");
                    View view = sharedElementFirstOutViews;
                    Objects.toString(view);
                    ViewCompat.getTransitionName(view);
                }
                ArrayList<View> arrayList2 = this.sharedElementLastInViews;
                int size2 = arrayList2.size();
                int i3 = 0;
                while (i3 < size2) {
                    View sharedElementLastInViews = arrayList2.get(i3);
                    i3++;
                    kotlin.jvm.internal.j.d(sharedElementLastInViews, "sharedElementLastInViews");
                    View view2 = sharedElementLastInViews;
                    Objects.toString(view2);
                    ViewCompat.getTransitionName(view2);
                }
            }
            executeTransition.invoke();
            this.transitionImpl.setNameOverridesReordered(container, this.sharedElementFirstOutViews, this.sharedElementLastInViews, arrayListPrepareSetNameOverridesReordered, this.sharedElementNameMapping);
            FragmentTransition.setViewVisibility(enteringViews, 0);
            this.transitionImpl.swapSharedElementTargets(this.sharedElementTransition, this.sharedElementFirstOutViews, this.sharedElementLastInViews);
        }

        @Nullable
        public final Object getController() {
            return this.controller;
        }

        @NotNull
        public final ArrayList<String> getEnteringNames() {
            return this.enteringNames;
        }

        @NotNull
        public final ArrayList<String> getExitingNames() {
            return this.exitingNames;
        }

        @Nullable
        public final SpecialEffectsController.Operation getFirstOut() {
            return this.firstOut;
        }

        @NotNull
        public final ArrayMap<String, View> getFirstOutViews() {
            return this.firstOutViews;
        }

        @Nullable
        public final SpecialEffectsController.Operation getLastIn() {
            return this.lastIn;
        }

        @NotNull
        public final ArrayMap<String, View> getLastInViews() {
            return this.lastInViews;
        }

        @NotNull
        public final ArrayList<View> getSharedElementFirstOutViews() {
            return this.sharedElementFirstOutViews;
        }

        @NotNull
        public final ArrayList<View> getSharedElementLastInViews() {
            return this.sharedElementLastInViews;
        }

        @NotNull
        public final ArrayMap<String, String> getSharedElementNameMapping() {
            return this.sharedElementNameMapping;
        }

        @Nullable
        public final Object getSharedElementTransition() {
            return this.sharedElementTransition;
        }

        @NotNull
        public final FragmentTransitionImpl getTransitionImpl() {
            return this.transitionImpl;
        }

        @NotNull
        public final List<TransitionInfo> getTransitionInfos() {
            return this.transitionInfos;
        }

        @NotNull
        public final CancellationSignal getTransitionSignal() {
            return this.transitionSignal;
        }

        public final boolean getTransitioning() {
            List<TransitionInfo> list = this.transitionInfos;
            if ((list instanceof Collection) && list.isEmpty()) {
                return true;
            }
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (!((TransitionInfo) it.next()).getOperation().getFragment().mTransitioning) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: isPop, reason: from getter */
        public final boolean getIsPop() {
            return this.isPop;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        /* renamed from: isSeekingSupported */
        public boolean getIsSeekingSupported() {
            if (!this.transitionImpl.isSeekingSupported()) {
                return false;
            }
            List<TransitionInfo> list = this.transitionInfos;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (TransitionInfo transitionInfo : list) {
                    if (Build.VERSION.SDK_INT < 34 || transitionInfo.getTransition() == null || !this.transitionImpl.isSeekingSupported(transitionInfo.getTransition())) {
                        return false;
                    }
                }
            }
            Object obj = this.sharedElementTransition;
            return obj == null || this.transitionImpl.isSeekingSupported(obj);
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public void onCancel(@NotNull ViewGroup container) {
            kotlin.jvm.internal.j.e(container, "container");
            this.transitionSignal.cancel();
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public void onCommit(@NotNull final ViewGroup container) {
            kotlin.jvm.internal.j.e(container, "container");
            if (!container.isLaidOut()) {
                for (TransitionInfo transitionInfo : this.transitionInfos) {
                    SpecialEffectsController.Operation operation = transitionInfo.getOperation();
                    if (FragmentManager.isLoggingEnabled(2)) {
                        container.toString();
                        Objects.toString(operation);
                    }
                    transitionInfo.getOperation().completeEffect(this);
                }
                return;
            }
            Object obj = this.controller;
            if (obj != null) {
                FragmentTransitionImpl fragmentTransitionImpl = this.transitionImpl;
                kotlin.jvm.internal.j.b(obj);
                fragmentTransitionImpl.animateToEnd(obj);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Objects.toString(this.firstOut);
                    Objects.toString(this.lastIn);
                    return;
                }
                return;
            }
            Pair<ArrayList<View>, Object> pairCreateMergedTransition = createMergedTransition(container, this.lastIn, this.firstOut);
            ArrayList<View> arrayListComponent1 = pairCreateMergedTransition.component1();
            final Object objComponent2 = pairCreateMergedTransition.component2();
            List<TransitionInfo> list = this.transitionInfos;
            ArrayList arrayList = new ArrayList(kotlin.collections.r.v(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((TransitionInfo) it.next()).getOperation());
            }
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj2 = arrayList.get(i2);
                i2++;
                final SpecialEffectsController.Operation operation2 = (SpecialEffectsController.Operation) obj2;
                this.transitionImpl.setListenerForTransitionEnd(operation2.getFragment(), objComponent2, this.transitionSignal, new Runnable() { // from class: androidx.fragment.app.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultSpecialEffectsController.TransitionEffect.onCommit$lambda$11$lambda$10(operation2, this);
                    }
                });
            }
            runTransition(arrayListComponent1, container, new Function0<kotlin.j>() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect$onCommit$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.j invoke() {
                    invoke2();
                    return kotlin.j.f51397a;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    this.this$0.getTransitionImpl().beginDelayedTransition(container, objComponent2);
                }
            });
            if (FragmentManager.isLoggingEnabled(2)) {
                Objects.toString(this.firstOut);
                Objects.toString(this.lastIn);
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public void onProgress(@NotNull BackEventCompat backEvent, @NotNull ViewGroup container) {
            kotlin.jvm.internal.j.e(backEvent, "backEvent");
            kotlin.jvm.internal.j.e(container, "container");
            Object obj = this.controller;
            if (obj != null) {
                this.transitionImpl.setCurrentPlayTime(obj, backEvent.getProgress());
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public void onStart(@NotNull final ViewGroup container) {
            kotlin.jvm.internal.j.e(container, "container");
            if (!container.isLaidOut()) {
                Iterator<T> it = this.transitionInfos.iterator();
                while (it.hasNext()) {
                    SpecialEffectsController.Operation operation = ((TransitionInfo) it.next()).getOperation();
                    if (FragmentManager.isLoggingEnabled(2)) {
                        container.toString();
                        Objects.toString(operation);
                    }
                }
                return;
            }
            if (getTransitioning() && this.sharedElementTransition != null && !getIsSeekingSupported()) {
                Objects.toString(this.sharedElementTransition);
                Objects.toString(this.firstOut);
                Objects.toString(this.lastIn);
            }
            if (getIsSeekingSupported() && getTransitioning()) {
                final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                Pair<ArrayList<View>, Object> pairCreateMergedTransition = createMergedTransition(container, this.lastIn, this.firstOut);
                ArrayList<View> arrayListComponent1 = pairCreateMergedTransition.component1();
                final Object objComponent2 = pairCreateMergedTransition.component2();
                List<TransitionInfo> list = this.transitionInfos;
                ArrayList arrayList = new ArrayList(kotlin.collections.r.v(list, 10));
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((TransitionInfo) it2.next()).getOperation());
                }
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    final SpecialEffectsController.Operation operation2 = (SpecialEffectsController.Operation) arrayList.get(i2);
                    this.transitionImpl.setListenerForTransitionEnd(operation2.getFragment(), objComponent2, this.transitionSignal, new Runnable() { // from class: androidx.fragment.app.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            DefaultSpecialEffectsController.TransitionEffect.onStart$lambda$6$lambda$4(ref$ObjectRef);
                        }
                    }, new Runnable() { // from class: androidx.fragment.app.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            DefaultSpecialEffectsController.TransitionEffect.onStart$lambda$6$lambda$5(operation2, this);
                        }
                    });
                }
                runTransition(arrayListComponent1, container, new Function0<kotlin.j>() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect$onStart$4

                    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/j;", "invoke", "()V", "<anonymous>"}, k = 3, mv = {1, 8, 0})
                    @SourceDebugExtension({"SMAP\nDefaultSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect$onStart$4$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1129:1\n1855#2,2:1130\n*S KotlinDebug\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect$onStart$4$2\n*L\n799#1:1130,2\n*E\n"})
                    /* renamed from: androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect$onStart$4$2, reason: invalid class name */
                    public static final class AnonymousClass2 extends Lambda implements Function0<kotlin.j> {
                        final /* synthetic */ ViewGroup $container;
                        final /* synthetic */ DefaultSpecialEffectsController.TransitionEffect this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass2(DefaultSpecialEffectsController.TransitionEffect transitionEffect, ViewGroup viewGroup) {
                            super(0);
                            this.this$0 = transitionEffect;
                            this.$container = viewGroup;
                        }

                        /* JADX INFO: Access modifiers changed from: private */
                        public static final void invoke$lambda$1(DefaultSpecialEffectsController.TransitionEffect this$0, ViewGroup container) {
                            kotlin.jvm.internal.j.e(this$0, "this$0");
                            kotlin.jvm.internal.j.e(container, "$container");
                            Iterator<T> it = this$0.getTransitionInfos().iterator();
                            while (it.hasNext()) {
                                SpecialEffectsController.Operation operation = ((DefaultSpecialEffectsController.TransitionInfo) it.next()).getOperation();
                                View view = operation.getFragment().getView();
                                if (view != null) {
                                    operation.getFinalState().applyState(view, container);
                                }
                            }
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ kotlin.j invoke() {
                            invoke2();
                            return kotlin.j.f51397a;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            FragmentManager.isLoggingEnabled(2);
                            FragmentTransitionImpl transitionImpl = this.this$0.getTransitionImpl();
                            Object controller = this.this$0.getController();
                            kotlin.jvm.internal.j.b(controller);
                            final DefaultSpecialEffectsController.TransitionEffect transitionEffect = this.this$0;
                            final ViewGroup viewGroup = this.$container;
                            transitionImpl.animateToStart(controller, 
                            /*  JADX ERROR: Method code generation error
                                jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x001c: INVOKE 
                                  (r0v2 'transitionImpl' androidx.fragment.app.FragmentTransitionImpl)
                                  (r1v1 'controller' java.lang.Object)
                                  (wrap:java.lang.Runnable:0x0019: CONSTRUCTOR 
                                  (r2v0 'transitionEffect' androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect A[DONT_INLINE])
                                  (r3v0 'viewGroup' android.view.ViewGroup A[DONT_INLINE])
                                 A[MD:(androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect, android.view.ViewGroup):void (m), WRAPPED] call: androidx.fragment.app.i.<init>(androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect, android.view.ViewGroup):void type: CONSTRUCTOR)
                                 VIRTUAL call: androidx.fragment.app.FragmentTransitionImpl.animateToStart(java.lang.Object, java.lang.Runnable):void A[MD:(java.lang.Object, java.lang.Runnable):void (m)] in method: androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect$onStart$4.2.invoke():void, file: classes.dex
                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                                	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:298)
                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:277)
                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:410)
                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
                                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
                                	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                                	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
                                	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
                                	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
                                	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
                                	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:297)
                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:286)
                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:270)
                                	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:161)
                                	at jadx.core.codegen.ClassGen.addInnerClass(ClassGen.java:310)
                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
                                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
                                	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                                	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
                                	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
                                	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
                                	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
                                	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:297)
                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:286)
                                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:845)
                                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:910)
                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                                	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:298)
                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:277)
                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:410)
                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
                                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
                                	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                                	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
                                	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
                                	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
                                	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
                                	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:297)
                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:286)
                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:270)
                                	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:161)
                                	at jadx.core.codegen.ClassGen.addInnerClass(ClassGen.java:310)
                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
                                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
                                	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                                	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
                                	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
                                	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
                                	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
                                	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:297)
                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:286)
                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:270)
                                	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:161)
                                	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:103)
                                	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
                                	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
                                	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
                                	at jadx.core.ProcessClass.process(ProcessClass.java:79)
                                	at jadx.core.ProcessClass.generateCode(ProcessClass.java:117)
                                	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:403)
                                	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:391)
                                	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:341)
                                Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: androidx.fragment.app.i, state: NOT_LOADED
                                	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:306)
                                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:910)
                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                                	... 115 more
                                */
                            /*
                                this = this;
                                r0 = 2
                                androidx.fragment.app.FragmentManager.isLoggingEnabled(r0)
                                androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect r0 = r5.this$0
                                androidx.fragment.app.FragmentTransitionImpl r0 = r0.getTransitionImpl()
                                androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect r1 = r5.this$0
                                java.lang.Object r1 = r1.getController()
                                kotlin.jvm.internal.j.b(r1)
                                androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect r2 = r5.this$0
                                android.view.ViewGroup r3 = r5.$container
                                androidx.fragment.app.i r4 = new androidx.fragment.app.i
                                r4.<init>(r2, r3)
                                r0.animateToStart(r1, r4)
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect$onStart$4.AnonymousClass2.invoke2():void");
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ kotlin.j invoke() {
                        invoke2();
                        return kotlin.j.f51397a;
                    }

                    /* JADX WARN: Type inference failed for: r1v6, types: [T, androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect$onStart$4$2] */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        DefaultSpecialEffectsController.TransitionEffect transitionEffect = this.this$0;
                        transitionEffect.setController(transitionEffect.getTransitionImpl().controlDelayedTransition(container, objComponent2));
                        boolean z2 = this.this$0.getController() != null;
                        Object obj = objComponent2;
                        ViewGroup viewGroup = container;
                        if (z2) {
                            ref$ObjectRef.element = new AnonymousClass2(this.this$0, viewGroup);
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Objects.toString(this.this$0.getFirstOut());
                                Objects.toString(this.this$0.getLastIn());
                                return;
                            }
                            return;
                        }
                        throw new IllegalStateException(("Unable to start transition " + obj + " for container " + viewGroup + '.').toString());
                    }
                });
            }
        }

        public final void setController(@Nullable Object obj) {
            this.controller = obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultSpecialEffectsController(@NotNull ViewGroup container) {
        super(container);
        kotlin.jvm.internal.j.e(container, "container");
    }

    @SuppressLint({"NewApi", "PrereleaseSdkCoreDependency"})
    private final void collectAnimEffects(List<AnimationInfo> animationInfos) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = animationInfos.iterator();
        while (it.hasNext()) {
            kotlin.collections.v.z(arrayList2, ((AnimationInfo) it.next()).getOperation().getEffects$fragment_release());
        }
        boolean zIsEmpty = arrayList2.isEmpty();
        int i2 = 0;
        boolean z2 = false;
        for (AnimationInfo animationInfo : animationInfos) {
            Context context = getContainer().getContext();
            SpecialEffectsController.Operation operation = animationInfo.getOperation();
            kotlin.jvm.internal.j.d(context, "context");
            FragmentAnim.AnimationOrAnimator animation = animationInfo.getAnimation(context);
            if (animation != null) {
                if (animation.animator == null) {
                    arrayList.add(animationInfo);
                } else {
                    Fragment fragment = operation.getFragment();
                    if (operation.getEffects$fragment_release().isEmpty()) {
                        if (operation.getFinalState() == SpecialEffectsController.Operation.State.GONE) {
                            operation.setAwaitingContainerChanges(false);
                        }
                        operation.addEffect(new AnimatorEffect(animationInfo));
                        z2 = true;
                    } else if (FragmentManager.isLoggingEnabled(2)) {
                        Objects.toString(fragment);
                    }
                }
            }
        }
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            AnimationInfo animationInfo2 = (AnimationInfo) obj;
            SpecialEffectsController.Operation operation2 = animationInfo2.getOperation();
            Fragment fragment2 = operation2.getFragment();
            if (zIsEmpty) {
                if (!z2) {
                    operation2.addEffect(new AnimationEffect(animationInfo2));
                } else if (FragmentManager.isLoggingEnabled(2)) {
                    Objects.toString(fragment2);
                }
            } else if (FragmentManager.isLoggingEnabled(2)) {
                Objects.toString(fragment2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void collectEffects$lambda$2(DefaultSpecialEffectsController this$0, SpecialEffectsController.Operation operation) {
        kotlin.jvm.internal.j.e(this$0, "this$0");
        kotlin.jvm.internal.j.e(operation, "$operation");
        this$0.applyContainerChangesToOperation$fragment_release(operation);
    }

    private final void createTransitionEffect(List<TransitionInfo> transitionInfos, boolean isPop, SpecialEffectsController.Operation firstOut, SpecialEffectsController.Operation lastIn) {
        Object objWrapTransitionInSet;
        int i2;
        int i3;
        FragmentTransitionImpl fragmentTransitionImpl;
        int i4;
        String strFindKeyForValue;
        int i5;
        ArrayList arrayList = new ArrayList();
        for (Object obj : transitionInfos) {
            if (!((TransitionInfo) obj).isVisibilityUnchanged()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj2 = arrayList.get(i6);
            i6++;
            if (((TransitionInfo) obj2).getHandlingImpl() != null) {
                arrayList2.add(obj2);
            }
        }
        int size2 = arrayList2.size();
        int i7 = 0;
        FragmentTransitionImpl fragmentTransitionImpl2 = null;
        while (i7 < size2) {
            Object obj3 = arrayList2.get(i7);
            i7++;
            TransitionInfo transitionInfo = (TransitionInfo) obj3;
            FragmentTransitionImpl handlingImpl = transitionInfo.getHandlingImpl();
            if (fragmentTransitionImpl2 != null && handlingImpl != fragmentTransitionImpl2) {
                throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + transitionInfo.getOperation().getFragment() + " returned Transition " + transitionInfo.getTransition() + " which uses a different Transition type than other Fragments.").toString());
            }
            fragmentTransitionImpl2 = handlingImpl;
        }
        if (fragmentTransitionImpl2 == null) {
            return;
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayMap arrayMap = new ArrayMap();
        ArrayList<String> arrayList5 = new ArrayList<>();
        ArrayList<String> arrayList6 = new ArrayList<>();
        ArrayMap<String, View> arrayMap2 = new ArrayMap<>();
        ArrayMap<String, View> arrayMap3 = new ArrayMap<>();
        int size3 = arrayList2.size();
        ArrayList<String> sharedElementTargetNames = arrayList5;
        ArrayList<String> sharedElementSourceNames = arrayList6;
        int i8 = 0;
        loop3: while (true) {
            objWrapTransitionInSet = null;
            while (i8 < size3) {
                Object obj4 = arrayList2.get(i8);
                int i9 = i8 + 1;
                TransitionInfo transitionInfo2 = (TransitionInfo) obj4;
                if (transitionInfo2.hasSharedElementTransition() && firstOut != null && lastIn != null) {
                    objWrapTransitionInSet = fragmentTransitionImpl2.wrapTransitionInSet(fragmentTransitionImpl2.cloneTransition(transitionInfo2.getSharedElementTransition()));
                    sharedElementSourceNames = lastIn.getFragment().getSharedElementSourceNames();
                    kotlin.jvm.internal.j.d(sharedElementSourceNames, "lastIn.fragment.sharedElementSourceNames");
                    ArrayList<String> sharedElementSourceNames2 = firstOut.getFragment().getSharedElementSourceNames();
                    kotlin.jvm.internal.j.d(sharedElementSourceNames2, "firstOut.fragment.sharedElementSourceNames");
                    ArrayList<String> sharedElementTargetNames2 = firstOut.getFragment().getSharedElementTargetNames();
                    kotlin.jvm.internal.j.d(sharedElementTargetNames2, "firstOut.fragment.sharedElementTargetNames");
                    int size4 = sharedElementTargetNames2.size();
                    i2 = i9;
                    int i10 = 0;
                    while (i10 < size4) {
                        int i11 = size4;
                        int iIndexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames2.get(i10));
                        if (iIndexOf != -1) {
                            sharedElementSourceNames.set(iIndexOf, sharedElementSourceNames2.get(i10));
                        }
                        i10++;
                        size4 = i11;
                    }
                    sharedElementTargetNames = lastIn.getFragment().getSharedElementTargetNames();
                    kotlin.jvm.internal.j.d(sharedElementTargetNames, "lastIn.fragment.sharedElementTargetNames");
                    Pair pairA = !isPop ? kotlin.f.a(firstOut.getFragment().getExitTransitionCallback(), lastIn.getFragment().getEnterTransitionCallback()) : kotlin.f.a(firstOut.getFragment().getEnterTransitionCallback(), lastIn.getFragment().getExitTransitionCallback());
                    SharedElementCallback sharedElementCallback = (SharedElementCallback) pairA.component1();
                    SharedElementCallback sharedElementCallback2 = (SharedElementCallback) pairA.component2();
                    int size5 = sharedElementSourceNames.size();
                    i3 = size3;
                    int i12 = 0;
                    while (true) {
                        fragmentTransitionImpl = fragmentTransitionImpl2;
                        if (i12 >= size5) {
                            break;
                        }
                        int i13 = size5;
                        String str = sharedElementSourceNames.get(i12);
                        kotlin.jvm.internal.j.d(str, "exitingNames[i]");
                        String str2 = sharedElementTargetNames.get(i12);
                        kotlin.jvm.internal.j.d(str2, "enteringNames[i]");
                        arrayMap.put(str, str2);
                        i12++;
                        fragmentTransitionImpl2 = fragmentTransitionImpl;
                        size5 = i13;
                    }
                    if (FragmentManager.isLoggingEnabled(2)) {
                        int size6 = sharedElementTargetNames.size();
                        i4 = 2;
                        for (int i14 = 0; i14 < size6; i14++) {
                            sharedElementTargetNames.get(i14);
                        }
                        int size7 = sharedElementSourceNames.size();
                        for (int i15 = 0; i15 < size7; i15++) {
                            sharedElementSourceNames.get(i15);
                        }
                    } else {
                        i4 = 2;
                    }
                    View view = firstOut.getFragment().mView;
                    kotlin.jvm.internal.j.d(view, "firstOut.fragment.mView");
                    findNamedViews(arrayMap2, view);
                    arrayMap2.retainAll(sharedElementSourceNames);
                    if (sharedElementCallback != null) {
                        if (FragmentManager.isLoggingEnabled(i4)) {
                            firstOut.toString();
                        }
                        sharedElementCallback.onMapSharedElements(sharedElementSourceNames, arrayMap2);
                        int size8 = sharedElementSourceNames.size() - 1;
                        if (size8 >= 0) {
                            while (true) {
                                int i16 = size8 - 1;
                                String str3 = sharedElementSourceNames.get(size8);
                                kotlin.jvm.internal.j.d(str3, "exitingNames[i]");
                                String str4 = str3;
                                View view2 = arrayMap2.get(str4);
                                if (view2 == null) {
                                    arrayMap.remove(str4);
                                    i5 = i16;
                                } else {
                                    i5 = i16;
                                    if (!kotlin.jvm.internal.j.a(str4, ViewCompat.getTransitionName(view2))) {
                                        arrayMap.put(ViewCompat.getTransitionName(view2), (String) arrayMap.remove(str4));
                                    }
                                }
                                if (i5 < 0) {
                                    break;
                                } else {
                                    size8 = i5;
                                }
                            }
                        }
                    } else {
                        arrayMap.retainAll(arrayMap2.keySet());
                    }
                    View view3 = lastIn.getFragment().mView;
                    kotlin.jvm.internal.j.d(view3, "lastIn.fragment.mView");
                    findNamedViews(arrayMap3, view3);
                    arrayMap3.retainAll(sharedElementTargetNames);
                    arrayMap3.retainAll(arrayMap.values());
                    if (sharedElementCallback2 != null) {
                        if (FragmentManager.isLoggingEnabled(i4)) {
                            lastIn.toString();
                        }
                        sharedElementCallback2.onMapSharedElements(sharedElementTargetNames, arrayMap3);
                        int size9 = sharedElementTargetNames.size() - 1;
                        if (size9 >= 0) {
                            while (true) {
                                int i17 = size9 - 1;
                                String str5 = sharedElementTargetNames.get(size9);
                                kotlin.jvm.internal.j.d(str5, "enteringNames[i]");
                                String str6 = str5;
                                View view4 = arrayMap3.get(str6);
                                if (view4 == null) {
                                    String strFindKeyForValue2 = FragmentTransition.findKeyForValue(arrayMap, str6);
                                    if (strFindKeyForValue2 != null) {
                                        arrayMap.remove(strFindKeyForValue2);
                                    }
                                } else if (!kotlin.jvm.internal.j.a(str6, ViewCompat.getTransitionName(view4)) && (strFindKeyForValue = FragmentTransition.findKeyForValue(arrayMap, str6)) != null) {
                                    arrayMap.put(strFindKeyForValue, ViewCompat.getTransitionName(view4));
                                }
                                if (i17 < 0) {
                                    break;
                                } else {
                                    size9 = i17;
                                }
                            }
                        }
                    } else {
                        FragmentTransition.retainValues(arrayMap, arrayMap3);
                    }
                    Collection<String> collectionKeySet = arrayMap.keySet();
                    kotlin.jvm.internal.j.d(collectionKeySet, "sharedElementNameMapping.keys");
                    retainMatchingViews(arrayMap2, collectionKeySet);
                    Collection<String> collectionValues = arrayMap.values();
                    kotlin.jvm.internal.j.d(collectionValues, "sharedElementNameMapping.values");
                    retainMatchingViews(arrayMap3, collectionValues);
                    if (arrayMap.isEmpty()) {
                        break;
                    }
                } else {
                    i2 = i9;
                    i3 = size3;
                    fragmentTransitionImpl = fragmentTransitionImpl2;
                }
                i8 = i2;
                size3 = i3;
                fragmentTransitionImpl2 = fragmentTransitionImpl;
            }
            Objects.toString(objWrapTransitionInSet);
            firstOut.toString();
            lastIn.toString();
            arrayList3.clear();
            arrayList4.clear();
            i8 = i2;
            size3 = i3;
            fragmentTransitionImpl2 = fragmentTransitionImpl;
        }
        FragmentTransitionImpl fragmentTransitionImpl3 = fragmentTransitionImpl2;
        if (objWrapTransitionInSet == null) {
            if (arrayList2.isEmpty()) {
                return;
            }
            int size10 = arrayList2.size();
            int i18 = 0;
            while (i18 < size10) {
                Object obj5 = arrayList2.get(i18);
                i18++;
                if (((TransitionInfo) obj5).getTransition() == null) {
                }
            }
            return;
        }
        TransitionEffect transitionEffect = new TransitionEffect(arrayList2, firstOut, lastIn, fragmentTransitionImpl3, objWrapTransitionInSet, arrayList3, arrayList4, arrayMap, sharedElementTargetNames, sharedElementSourceNames, arrayMap2, arrayMap3, isPop);
        int size11 = arrayList2.size();
        int i19 = 0;
        while (i19 < size11) {
            Object obj6 = arrayList2.get(i19);
            i19++;
            ((TransitionInfo) obj6).getOperation().addEffect(transitionEffect);
        }
    }

    private final void findNamedViews(Map<String, View> namedViews, View view) {
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            namedViews.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View child = viewGroup.getChildAt(i2);
                if (child.getVisibility() == 0) {
                    kotlin.jvm.internal.j.d(child, "child");
                    findNamedViews(namedViews, child);
                }
            }
        }
    }

    private final void retainMatchingViews(ArrayMap<String, View> arrayMap, final Collection<String> collection) {
        Set<Map.Entry<String, View>> entries = arrayMap.entrySet();
        kotlin.jvm.internal.j.d(entries, "entries");
        kotlin.collections.v.E(entries, new Function1<Map.Entry<String, View>, Boolean>() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.retainMatchingViews.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Map.Entry<String, View> entry) {
                kotlin.jvm.internal.j.e(entry, "entry");
                return Boolean.valueOf(y.G(collection, ViewCompat.getTransitionName(entry.getValue())));
            }
        });
    }

    private final void syncAnimations(List<? extends SpecialEffectsController.Operation> operations) {
        Fragment fragment = ((SpecialEffectsController.Operation) y.R(operations)).getFragment();
        for (SpecialEffectsController.Operation operation : operations) {
            operation.getFragment().mAnimationInfo.mEnterAnim = fragment.mAnimationInfo.mEnterAnim;
            operation.getFragment().mAnimationInfo.mExitAnim = fragment.mAnimationInfo.mExitAnim;
            operation.getFragment().mAnimationInfo.mPopEnterAnim = fragment.mAnimationInfo.mPopEnterAnim;
            operation.getFragment().mAnimationInfo.mPopExitAnim = fragment.mAnimationInfo.mPopExitAnim;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a4  */
    @Override // androidx.fragment.app.SpecialEffectsController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void collectEffects(@org.jetbrains.annotations.NotNull java.util.List<? extends androidx.fragment.app.SpecialEffectsController.Operation> r9, boolean r10) {
        /*
            r8 = this;
            java.lang.String r0 = "operations"
            kotlin.jvm.internal.j.e(r9, r0)
            r0 = r9
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        Lc:
            boolean r1 = r0.hasNext()
            r2 = 0
            java.lang.String r3 = "operation.fragment.mView"
            if (r1 == 0) goto L36
            java.lang.Object r1 = r0.next()
            r4 = r1
            androidx.fragment.app.SpecialEffectsController$Operation r4 = (androidx.fragment.app.SpecialEffectsController.Operation) r4
            androidx.fragment.app.SpecialEffectsController$Operation$State$Companion r5 = androidx.fragment.app.SpecialEffectsController.Operation.State.INSTANCE
            androidx.fragment.app.Fragment r6 = r4.getFragment()
            android.view.View r6 = r6.mView
            kotlin.jvm.internal.j.d(r6, r3)
            androidx.fragment.app.SpecialEffectsController$Operation$State r5 = r5.asOperationState(r6)
            androidx.fragment.app.SpecialEffectsController$Operation$State r6 = androidx.fragment.app.SpecialEffectsController.Operation.State.VISIBLE
            if (r5 != r6) goto Lc
            androidx.fragment.app.SpecialEffectsController$Operation$State r4 = r4.getFinalState()
            if (r4 == r6) goto Lc
            goto L37
        L36:
            r1 = r2
        L37:
            androidx.fragment.app.SpecialEffectsController$Operation r1 = (androidx.fragment.app.SpecialEffectsController.Operation) r1
            int r0 = r9.size()
            java.util.ListIterator r0 = r9.listIterator(r0)
        L41:
            boolean r4 = r0.hasPrevious()
            if (r4 == 0) goto L68
            java.lang.Object r4 = r0.previous()
            r5 = r4
            androidx.fragment.app.SpecialEffectsController$Operation r5 = (androidx.fragment.app.SpecialEffectsController.Operation) r5
            androidx.fragment.app.SpecialEffectsController$Operation$State$Companion r6 = androidx.fragment.app.SpecialEffectsController.Operation.State.INSTANCE
            androidx.fragment.app.Fragment r7 = r5.getFragment()
            android.view.View r7 = r7.mView
            kotlin.jvm.internal.j.d(r7, r3)
            androidx.fragment.app.SpecialEffectsController$Operation$State r6 = r6.asOperationState(r7)
            androidx.fragment.app.SpecialEffectsController$Operation$State r7 = androidx.fragment.app.SpecialEffectsController.Operation.State.VISIBLE
            if (r6 == r7) goto L41
            androidx.fragment.app.SpecialEffectsController$Operation$State r5 = r5.getFinalState()
            if (r5 != r7) goto L41
            r2 = r4
        L68:
            androidx.fragment.app.SpecialEffectsController$Operation r2 = (androidx.fragment.app.SpecialEffectsController.Operation) r2
            r0 = 2
            boolean r0 = androidx.fragment.app.FragmentManager.isLoggingEnabled(r0)
            if (r0 == 0) goto L77
            java.util.Objects.toString(r1)
            java.util.Objects.toString(r2)
        L77:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            r8.syncAnimations(r9)
            java.util.Iterator r9 = r9.iterator()
        L88:
            boolean r4 = r9.hasNext()
            if (r4 == 0) goto Lb8
            java.lang.Object r4 = r9.next()
            androidx.fragment.app.SpecialEffectsController$Operation r4 = (androidx.fragment.app.SpecialEffectsController.Operation) r4
            androidx.fragment.app.DefaultSpecialEffectsController$AnimationInfo r5 = new androidx.fragment.app.DefaultSpecialEffectsController$AnimationInfo
            r5.<init>(r4, r10)
            r0.add(r5)
            androidx.fragment.app.DefaultSpecialEffectsController$TransitionInfo r5 = new androidx.fragment.app.DefaultSpecialEffectsController$TransitionInfo
            r6 = 0
            r7 = 1
            if (r10 == 0) goto La6
            if (r4 != r1) goto La9
        La4:
            r6 = r7
            goto La9
        La6:
            if (r4 != r2) goto La9
            goto La4
        La9:
            r5.<init>(r4, r10, r6)
            r3.add(r5)
            androidx.fragment.app.a r5 = new androidx.fragment.app.a
            r5.<init>()
            r4.addCompletionListener(r5)
            goto L88
        Lb8:
            r8.createTransitionEffect(r3, r10, r1, r2)
            r8.collectAnimEffects(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DefaultSpecialEffectsController.collectEffects(java.util.List, boolean):void");
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\u0014\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000fH\u0002J\u0006\u0010\u0014\u001a\u00020\u0005R\u0013\u0010\b\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011¨\u0006\u0015"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;", "Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "operation", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "isPop", "", "providesSharedElementTransition", "(Landroidx/fragment/app/SpecialEffectsController$Operation;ZZ)V", "handlingImpl", "Landroidx/fragment/app/FragmentTransitionImpl;", "getHandlingImpl", "()Landroidx/fragment/app/FragmentTransitionImpl;", "isOverlapAllowed", "()Z", "sharedElementTransition", "", "getSharedElementTransition", "()Ljava/lang/Object;", "transition", "getTransition", "hasSharedElementTransition", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class TransitionInfo extends SpecialEffectsInfo {
        private final boolean isOverlapAllowed;

        @Nullable
        private final Object sharedElementTransition;

        @Nullable
        private final Object transition;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransitionInfo(@NotNull SpecialEffectsController.Operation operation, boolean z2, boolean z3) {
            Object returnTransition;
            super(operation);
            kotlin.jvm.internal.j.e(operation, "operation");
            SpecialEffectsController.Operation.State finalState = operation.getFinalState();
            SpecialEffectsController.Operation.State state = SpecialEffectsController.Operation.State.VISIBLE;
            if (finalState == state) {
                Fragment fragment = operation.getFragment();
                returnTransition = z2 ? fragment.getReenterTransition() : fragment.getEnterTransition();
            } else {
                Fragment fragment2 = operation.getFragment();
                returnTransition = z2 ? fragment2.getReturnTransition() : fragment2.getExitTransition();
            }
            this.transition = returnTransition;
            this.isOverlapAllowed = operation.getFinalState() == state ? z2 ? operation.getFragment().getAllowReturnTransitionOverlap() : operation.getFragment().getAllowEnterTransitionOverlap() : true;
            this.sharedElementTransition = z3 ? z2 ? operation.getFragment().getSharedElementReturnTransition() : operation.getFragment().getSharedElementEnterTransition() : null;
        }

        @Nullable
        public final FragmentTransitionImpl getHandlingImpl() {
            FragmentTransitionImpl handlingImpl = getHandlingImpl(this.transition);
            FragmentTransitionImpl handlingImpl2 = getHandlingImpl(this.sharedElementTransition);
            if (handlingImpl == null || handlingImpl2 == null || handlingImpl == handlingImpl2) {
                return handlingImpl == null ? handlingImpl2 : handlingImpl;
            }
            throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + getOperation().getFragment() + " returned Transition " + this.transition + " which uses a different Transition  type than its shared element transition " + this.sharedElementTransition).toString());
        }

        @Nullable
        public final Object getSharedElementTransition() {
            return this.sharedElementTransition;
        }

        @Nullable
        public final Object getTransition() {
            return this.transition;
        }

        public final boolean hasSharedElementTransition() {
            return this.sharedElementTransition != null;
        }

        /* renamed from: isOverlapAllowed, reason: from getter */
        public final boolean getIsOverlapAllowed() {
            return this.isOverlapAllowed;
        }

        private final FragmentTransitionImpl getHandlingImpl(Object transition) {
            if (transition == null) {
                return null;
            }
            FragmentTransitionImpl fragmentTransitionImpl = FragmentTransition.PLATFORM_IMPL;
            if (fragmentTransitionImpl != null && fragmentTransitionImpl.canHandle(transition)) {
                return fragmentTransitionImpl;
            }
            FragmentTransitionImpl fragmentTransitionImpl2 = FragmentTransition.SUPPORT_IMPL;
            if (fragmentTransitionImpl2 != null && fragmentTransitionImpl2.canHandle(transition)) {
                return fragmentTransitionImpl2;
            }
            throw new IllegalArgumentException("Transition " + transition + " for fragment " + getOperation().getFragment() + " is not a valid framework Transition or AndroidX Transition");
        }
    }
}
