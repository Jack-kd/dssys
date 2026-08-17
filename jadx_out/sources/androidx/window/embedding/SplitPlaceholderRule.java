package androidx.window.embedding;

import android.content.Intent;
import androidx.annotation.IntRange;
import androidx.core.util.Preconditions;
import androidx.window.embedding.SplitAttributes;
import androidx.window.embedding.SplitRule;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001&Bu\b\u0010\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0003\u0010\r\u001a\u00020\u000e\u0012\b\b\u0003\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0003\u0010\u0010\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0014\u001a\u00020\u0015¢\u0006\u0002\u0010\u0016J\u0013\u0010\u001e\u001a\u00020\n2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\b\u0010!\u001a\u00020\u000eH\u0016J\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0006H\u0080\u0002¢\u0006\u0002\b$J\b\u0010%\u001a\u00020\u0003H\u0016R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u001bR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u0006'"}, d2 = {"Landroidx/window/embedding/SplitPlaceholderRule;", "Landroidx/window/embedding/SplitRule;", "tag", "", "filters", "", "Landroidx/window/embedding/ActivityFilter;", "placeholderIntent", "Landroid/content/Intent;", "isSticky", "", "finishPrimaryWithPlaceholder", "Landroidx/window/embedding/SplitRule$FinishBehavior;", "minWidthDp", "", "minHeightDp", "minSmallestWidthDp", "maxAspectRatioInPortrait", "Landroidx/window/embedding/EmbeddingAspectRatio;", "maxAspectRatioInLandscape", "defaultSplitAttributes", "Landroidx/window/embedding/SplitAttributes;", "(Ljava/lang/String;Ljava/util/Set;Landroid/content/Intent;ZLandroidx/window/embedding/SplitRule$FinishBehavior;IIILandroidx/window/embedding/EmbeddingAspectRatio;Landroidx/window/embedding/EmbeddingAspectRatio;Landroidx/window/embedding/SplitAttributes;)V", "getFilters", "()Ljava/util/Set;", "getFinishPrimaryWithPlaceholder", "()Landroidx/window/embedding/SplitRule$FinishBehavior;", "()Z", "getPlaceholderIntent", "()Landroid/content/Intent;", "equals", "other", "", "hashCode", "plus", "filter", "plus$window_release", "toString", "Builder", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SplitPlaceholderRule extends SplitRule {

    @NotNull
    private final Set<ActivityFilter> filters;

    @NotNull
    private final SplitRule.FinishBehavior finishPrimaryWithPlaceholder;
    private final boolean isSticky;

    @NotNull
    private final Intent placeholderIntent;

    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u000fJ\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u000fJ\u0010\u0010\u001e\u001a\u00020\u00002\b\b\u0001\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u001f\u001a\u00020\u00002\b\b\u0001\u0010\u0013\u001a\u00020\u0012J\u0010\u0010 \u001a\u00020\u00002\b\b\u0001\u0010\u0014\u001a\u00020\u0012J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\"\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00128\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Landroidx/window/embedding/SplitPlaceholderRule$Builder;", "", "filters", "", "Landroidx/window/embedding/ActivityFilter;", "placeholderIntent", "Landroid/content/Intent;", "(Ljava/util/Set;Landroid/content/Intent;)V", "defaultSplitAttributes", "Landroidx/window/embedding/SplitAttributes;", "finishPrimaryWithPlaceholder", "Landroidx/window/embedding/SplitRule$FinishBehavior;", "isSticky", "", "maxAspectRatioInLandscape", "Landroidx/window/embedding/EmbeddingAspectRatio;", "maxAspectRatioInPortrait", "minHeightDp", "", "minSmallestWidthDp", "minWidthDp", "tag", "", "build", "Landroidx/window/embedding/SplitPlaceholderRule;", "setDefaultSplitAttributes", "setFinishPrimaryWithPlaceholder", "setMaxAspectRatioInLandscape", "aspectRatio", "setMaxAspectRatioInPortrait", "setMinHeightDp", "setMinSmallestWidthDp", "setMinWidthDp", "setSticky", "setTag", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nSplitPlaceholderRule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitPlaceholderRule.kt\nandroidx/window/embedding/SplitPlaceholderRule$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,343:1\n1#2:344\n*E\n"})
    public static final class Builder {

        @NotNull
        private SplitAttributes defaultSplitAttributes;

        @NotNull
        private final Set<ActivityFilter> filters;

        @NotNull
        private SplitRule.FinishBehavior finishPrimaryWithPlaceholder;
        private boolean isSticky;

        @NotNull
        private EmbeddingAspectRatio maxAspectRatioInLandscape;

        @NotNull
        private EmbeddingAspectRatio maxAspectRatioInPortrait;

        @IntRange(from = 0)
        private int minHeightDp;

        @IntRange(from = 0)
        private int minSmallestWidthDp;

        @IntRange(from = 0)
        private int minWidthDp;

        @NotNull
        private final Intent placeholderIntent;

        @Nullable
        private String tag;

        public Builder(@NotNull Set<ActivityFilter> filters, @NotNull Intent placeholderIntent) {
            kotlin.jvm.internal.j.e(filters, "filters");
            kotlin.jvm.internal.j.e(placeholderIntent, "placeholderIntent");
            this.filters = filters;
            this.placeholderIntent = placeholderIntent;
            this.minWidthDp = 600;
            this.minHeightDp = 600;
            this.minSmallestWidthDp = 600;
            this.maxAspectRatioInPortrait = SplitRule.SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT;
            this.maxAspectRatioInLandscape = SplitRule.SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT;
            this.finishPrimaryWithPlaceholder = SplitRule.FinishBehavior.ALWAYS;
            this.defaultSplitAttributes = new SplitAttributes.Builder().build();
        }

        @NotNull
        public final SplitPlaceholderRule build() {
            return new SplitPlaceholderRule(this.tag, this.filters, this.placeholderIntent, this.isSticky, this.finishPrimaryWithPlaceholder, this.minWidthDp, this.minHeightDp, this.minSmallestWidthDp, this.maxAspectRatioInPortrait, this.maxAspectRatioInLandscape, this.defaultSplitAttributes);
        }

        @NotNull
        public final Builder setDefaultSplitAttributes(@NotNull SplitAttributes defaultSplitAttributes) {
            kotlin.jvm.internal.j.e(defaultSplitAttributes, "defaultSplitAttributes");
            this.defaultSplitAttributes = defaultSplitAttributes;
            return this;
        }

        @NotNull
        public final Builder setFinishPrimaryWithPlaceholder(@NotNull SplitRule.FinishBehavior finishPrimaryWithPlaceholder) {
            kotlin.jvm.internal.j.e(finishPrimaryWithPlaceholder, "finishPrimaryWithPlaceholder");
            this.finishPrimaryWithPlaceholder = finishPrimaryWithPlaceholder;
            return this;
        }

        @NotNull
        public final Builder setMaxAspectRatioInLandscape(@NotNull EmbeddingAspectRatio aspectRatio) {
            kotlin.jvm.internal.j.e(aspectRatio, "aspectRatio");
            this.maxAspectRatioInLandscape = aspectRatio;
            return this;
        }

        @NotNull
        public final Builder setMaxAspectRatioInPortrait(@NotNull EmbeddingAspectRatio aspectRatio) {
            kotlin.jvm.internal.j.e(aspectRatio, "aspectRatio");
            this.maxAspectRatioInPortrait = aspectRatio;
            return this;
        }

        @NotNull
        public final Builder setMinHeightDp(@IntRange(from = 0) int minHeightDp) {
            this.minHeightDp = minHeightDp;
            return this;
        }

        @NotNull
        public final Builder setMinSmallestWidthDp(@IntRange(from = 0) int minSmallestWidthDp) {
            this.minSmallestWidthDp = minSmallestWidthDp;
            return this;
        }

        @NotNull
        public final Builder setMinWidthDp(@IntRange(from = 0) int minWidthDp) {
            this.minWidthDp = minWidthDp;
            return this;
        }

        @NotNull
        public final Builder setSticky(boolean isSticky) {
            this.isSticky = isSticky;
            return this;
        }

        @NotNull
        public final Builder setTag(@Nullable String tag) {
            this.tag = tag;
            return this;
        }
    }

    public /* synthetic */ SplitPlaceholderRule(String str, Set set, Intent intent, boolean z2, SplitRule.FinishBehavior finishBehavior, int i2, int i3, int i4, EmbeddingAspectRatio embeddingAspectRatio, EmbeddingAspectRatio embeddingAspectRatio2, SplitAttributes splitAttributes, int i5, kotlin.jvm.internal.f fVar) {
        this((i5 & 1) != 0 ? null : str, set, intent, z2, (i5 & 16) != 0 ? SplitRule.FinishBehavior.ALWAYS : finishBehavior, (i5 & 32) != 0 ? 600 : i2, (i5 & 64) != 0 ? 600 : i3, (i5 & 128) != 0 ? 600 : i4, (i5 & 256) != 0 ? SplitRule.SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT : embeddingAspectRatio, (i5 & 512) != 0 ? SplitRule.SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT : embeddingAspectRatio2, splitAttributes);
    }

    @Override // androidx.window.embedding.SplitRule, androidx.window.embedding.EmbeddingRule
    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SplitPlaceholderRule) || !super.equals(other)) {
            return false;
        }
        SplitPlaceholderRule splitPlaceholderRule = (SplitPlaceholderRule) other;
        return kotlin.jvm.internal.j.a(this.placeholderIntent, splitPlaceholderRule.placeholderIntent) && this.isSticky == splitPlaceholderRule.isSticky && kotlin.jvm.internal.j.a(this.finishPrimaryWithPlaceholder, splitPlaceholderRule.finishPrimaryWithPlaceholder) && kotlin.jvm.internal.j.a(this.filters, splitPlaceholderRule.filters);
    }

    @NotNull
    public final Set<ActivityFilter> getFilters() {
        return this.filters;
    }

    @NotNull
    public final SplitRule.FinishBehavior getFinishPrimaryWithPlaceholder() {
        return this.finishPrimaryWithPlaceholder;
    }

    @NotNull
    public final Intent getPlaceholderIntent() {
        return this.placeholderIntent;
    }

    @Override // androidx.window.embedding.SplitRule, androidx.window.embedding.EmbeddingRule
    public int hashCode() {
        return (((((((super.hashCode() * 31) + this.placeholderIntent.hashCode()) * 31) + Boolean.hashCode(this.isSticky)) * 31) + this.finishPrimaryWithPlaceholder.hashCode()) * 31) + this.filters.hashCode();
    }

    /* renamed from: isSticky, reason: from getter */
    public final boolean getIsSticky() {
        return this.isSticky;
    }

    @NotNull
    public final SplitPlaceholderRule plus$window_release(@NotNull ActivityFilter filter) {
        kotlin.jvm.internal.j.e(filter, "filter");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.addAll(this.filters);
        linkedHashSet.add(filter);
        return new Builder(y.e0(linkedHashSet), this.placeholderIntent).setTag(getTag()).setMinWidthDp(getMinWidthDp()).setMinHeightDp(getMinHeightDp()).setMinSmallestWidthDp(getMinSmallestWidthDp()).setMaxAspectRatioInPortrait(getMaxAspectRatioInPortrait()).setMaxAspectRatioInLandscape(getMaxAspectRatioInLandscape()).setSticky(this.isSticky).setFinishPrimaryWithPlaceholder(this.finishPrimaryWithPlaceholder).setDefaultSplitAttributes(getDefaultSplitAttributes()).build();
    }

    @Override // androidx.window.embedding.SplitRule
    @NotNull
    public String toString() {
        return "SplitPlaceholderRule{tag=" + getTag() + ", defaultSplitAttributes=" + getDefaultSplitAttributes() + ", minWidthDp=" + getMinWidthDp() + ", minHeightDp=" + getMinHeightDp() + ", minSmallestWidthDp=" + getMinSmallestWidthDp() + ", maxAspectRatioInPortrait=" + getMaxAspectRatioInPortrait() + ", maxAspectRatioInLandscape=" + getMaxAspectRatioInLandscape() + ", placeholderIntent=" + this.placeholderIntent + ", isSticky=" + this.isSticky + ", finishPrimaryWithPlaceholder=" + this.finishPrimaryWithPlaceholder + ", filters=" + this.filters + '}';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplitPlaceholderRule(@Nullable String str, @NotNull Set<ActivityFilter> filters, @NotNull Intent placeholderIntent, boolean z2, @NotNull SplitRule.FinishBehavior finishPrimaryWithPlaceholder, @IntRange(from = 0) int i2, @IntRange(from = 0) int i3, @IntRange(from = 0) int i4, @NotNull EmbeddingAspectRatio maxAspectRatioInPortrait, @NotNull EmbeddingAspectRatio maxAspectRatioInLandscape, @NotNull SplitAttributes defaultSplitAttributes) {
        super(str, i2, i3, i4, maxAspectRatioInPortrait, maxAspectRatioInLandscape, defaultSplitAttributes);
        kotlin.jvm.internal.j.e(filters, "filters");
        kotlin.jvm.internal.j.e(placeholderIntent, "placeholderIntent");
        kotlin.jvm.internal.j.e(finishPrimaryWithPlaceholder, "finishPrimaryWithPlaceholder");
        kotlin.jvm.internal.j.e(maxAspectRatioInPortrait, "maxAspectRatioInPortrait");
        kotlin.jvm.internal.j.e(maxAspectRatioInLandscape, "maxAspectRatioInLandscape");
        kotlin.jvm.internal.j.e(defaultSplitAttributes, "defaultSplitAttributes");
        Preconditions.checkArgument(!kotlin.jvm.internal.j.a(finishPrimaryWithPlaceholder, SplitRule.FinishBehavior.NEVER), "NEVER is not a valid configuration for SplitPlaceholderRule. Please use FINISH_ALWAYS or FINISH_ADJACENT instead or refer to the current API.", new Object[0]);
        this.filters = y.e0(filters);
        this.placeholderIntent = placeholderIntent;
        this.isSticky = z2;
        this.finishPrimaryWithPlaceholder = finishPrimaryWithPlaceholder;
    }
}
