package androidx.room.util;

import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.room.Room;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.y;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.j;
import kotlin.text.B;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0005\u001a\r\u0010\u0001\u001a\u00020\u0000¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u001d\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b\u001a\u001f\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\f\u0010\r\u001a\u001f\u0010\u000e\u001a\u0004\u0018\u00010\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u000e\u0010\u000f\"\"\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00108\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u0012\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Ljava/lang/StringBuilder;", "newStringBuilder", "()Ljava/lang/StringBuilder;", "builder", "", "count", "Lkotlin/j;", "appendPlaceholders", "(Ljava/lang/StringBuilder;I)V", "", "input", "", "splitToIntList", "(Ljava/lang/String;)Ljava/util/List;", "joinIntoString", "(Ljava/util/List;)Ljava/lang/String;", "", "EMPTY_STRING_ARRAY", "[Ljava/lang/String;", "getEMPTY_STRING_ARRAY$annotations", "()V", "room-runtime_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@JvmName(name = "StringUtil")
/* loaded from: classes.dex */
public final class StringUtil {

    @JvmField
    @NotNull
    public static final String[] EMPTY_STRING_ARRAY = new String[0];

    public static final void appendPlaceholders(@NotNull StringBuilder builder, int i2) {
        j.e(builder, "builder");
        for (int i3 = 0; i3 < i2; i3++) {
            builder.append("?");
            if (i3 < i2 - 1) {
                builder.append(",");
            }
        }
    }

    public static /* synthetic */ void getEMPTY_STRING_ARRAY$annotations() {
    }

    @Nullable
    public static final String joinIntoString(@Nullable List<Integer> list) {
        if (list != null) {
            return y.Q(list, ",", null, null, 0, null, null, 62, null);
        }
        return null;
    }

    @NotNull
    public static final StringBuilder newStringBuilder() {
        return new StringBuilder();
    }

    @Nullable
    public static final List<Integer> splitToIntList(@Nullable String str) {
        List listS0;
        Integer numValueOf;
        if (str == null || (listS0 = B.s0(str, new char[]{','}, false, 0, 6, null)) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = listS0.iterator();
        while (it.hasNext()) {
            try {
                numValueOf = Integer.valueOf(Integer.parseInt((String) it.next()));
            } catch (NumberFormatException e2) {
                Log.e(Room.LOG_TAG, "Malformed integer list", e2);
                numValueOf = null;
            }
            if (numValueOf != null) {
                arrayList.add(numValueOf);
            }
        }
        return arrayList;
    }
}
