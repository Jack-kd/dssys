package androidx.core.app;

import android.app.PictureInPictureUiState;
import android.os.Build;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/core/app/PictureInPictureUiStateCompat;", "", "isStashed", "", "isTransitioningToPip", "<init>", "(ZZ)V", "()Z", "Companion", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PictureInPictureUiStateCompat {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private final boolean isStashed;
    private final boolean isTransitioningToPip;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Landroidx/core/app/PictureInPictureUiStateCompat$Companion;", "", "<init>", "()V", "fromPictureInPictureUiState", "Landroidx/core/app/PictureInPictureUiStateCompat;", "uiState", "Landroid/app/PictureInPictureUiState;", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        @JvmStatic
        @NotNull
        public final PictureInPictureUiStateCompat fromPictureInPictureUiState(@NotNull PictureInPictureUiState uiState) {
            kotlin.jvm.internal.j.e(uiState, "uiState");
            int i2 = Build.VERSION.SDK_INT;
            return i2 >= 35 ? new PictureInPictureUiStateCompat(uiState.isStashed(), uiState.isTransitioningToPip()) : i2 >= 31 ? new PictureInPictureUiStateCompat(uiState.isStashed(), false) : new PictureInPictureUiStateCompat(false, false);
        }

        private Companion() {
        }
    }

    public PictureInPictureUiStateCompat(boolean z2, boolean z3) {
        this.isStashed = z2;
        this.isTransitioningToPip = z3;
    }

    @JvmStatic
    @NotNull
    public static final PictureInPictureUiStateCompat fromPictureInPictureUiState(@NotNull PictureInPictureUiState pictureInPictureUiState) {
        return INSTANCE.fromPictureInPictureUiState(pictureInPictureUiState);
    }

    /* renamed from: isStashed, reason: from getter */
    public final boolean getIsStashed() {
        return this.isStashed;
    }

    /* renamed from: isTransitioningToPip, reason: from getter */
    public final boolean getIsTransitioningToPip() {
        return this.isTransitioningToPip;
    }
}
