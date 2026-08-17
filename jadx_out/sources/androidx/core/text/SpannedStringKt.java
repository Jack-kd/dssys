package androidx.core.text;

import android.text.Spanned;
import android.text.SpannedString;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086\b\u001a:\u0010\u0003\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00050\u0004\"\n\b\u0000\u0010\u0005\u0018\u0001*\u00020\u0006*\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\bH\u0086\b¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"toSpanned", "Landroid/text/Spanned;", "", "getSpans", "", ExifInterface.GPS_DIRECTION_TRUE, "", "start", "", "end", "(Landroid/text/Spanned;II)[Ljava/lang/Object;", "core-ktx"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SpannedStringKt {
    public static final /* synthetic */ <T> T[] getSpans(Spanned spanned, int i2, int i3) {
        kotlin.jvm.internal.j.k(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T[]) spanned.getSpans(i2, i3, Object.class);
    }

    public static /* synthetic */ Object[] getSpans$default(Spanned spanned, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = 0;
        }
        if ((i4 & 2) != 0) {
            i3 = spanned.length();
        }
        kotlin.jvm.internal.j.k(4, ExifInterface.GPS_DIRECTION_TRUE);
        return spanned.getSpans(i2, i3, Object.class);
    }

    @NotNull
    public static final Spanned toSpanned(@NotNull CharSequence charSequence) {
        return SpannedString.valueOf(charSequence);
    }
}
