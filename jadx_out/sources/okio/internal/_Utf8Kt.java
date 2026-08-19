package okio.internal;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import io.flutter.plugin.editing.SpellCheckPlugin;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u001e\u0010\u0003\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005¨\u0006\u0007"}, d2 = {"commonAsUtf8ToByteArray", "", "", "commonToUtf8String", "beginIndex", "", SpellCheckPlugin.END_INDEX_KEY, "okio"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\n-Utf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n+ 2 Utf8.kt\nokio/Utf8\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,60:1\n260#2,16:61\n277#2:78\n397#2,9:79\n127#2:88\n406#2,20:90\n279#2,3:110\n440#2,4:113\n127#2:117\n446#2,10:118\n127#2:128\n456#2,5:129\n127#2:134\n461#2,24:135\n283#2,3:159\n500#2,3:162\n286#2,12:165\n503#2:177\n127#2:178\n506#2,2:179\n127#2:181\n510#2,10:182\n127#2:192\n520#2,5:193\n127#2:198\n525#2,5:199\n127#2:204\n530#2,28:205\n302#2,6:233\n138#2,67:239\n68#3:77\n74#3:89\n*S KotlinDebug\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n*L\n34#1:61,16\n34#1:78\n34#1:79,9\n34#1:88\n34#1:90,20\n34#1:110,3\n34#1:113,4\n34#1:117\n34#1:118,10\n34#1:128\n34#1:129,5\n34#1:134\n34#1:135,24\n34#1:159,3\n34#1:162,3\n34#1:165,12\n34#1:177\n34#1:178\n34#1:179,2\n34#1:181\n34#1:182,10\n34#1:192\n34#1:193,5\n34#1:198\n34#1:199,5\n34#1:204\n34#1:205,28\n34#1:233,6\n50#1:239,67\n34#1:77\n34#1:89\n*E\n"})
/* loaded from: classes5.dex */
public final class _Utf8Kt {
    @NotNull
    public static final byte[] commonAsUtf8ToByteArray(@NotNull String str) {
        int i2;
        char cCharAt;
        j.e(str, "<this>");
        byte[] bArr = new byte[str.length() * 4];
        int length = str.length();
        int i3 = 0;
        while (i3 < length) {
            char cCharAt2 = str.charAt(i3);
            if (j.g(cCharAt2, 128) >= 0) {
                int length2 = str.length();
                int i4 = i3;
                while (i3 < length2) {
                    char cCharAt3 = str.charAt(i3);
                    if (j.g(cCharAt3, 128) < 0) {
                        int i5 = i4 + 1;
                        bArr[i4] = (byte) cCharAt3;
                        i3++;
                        while (true) {
                            i4 = i5;
                            if (i3 >= length2 || j.g(str.charAt(i3), 128) >= 0) {
                                break;
                            }
                            i5 = i4 + 1;
                            bArr[i4] = (byte) str.charAt(i3);
                            i3++;
                        }
                    } else {
                        if (j.g(cCharAt3, 2048) < 0) {
                            bArr[i4] = (byte) ((cCharAt3 >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
                            i4 += 2;
                            bArr[i4 + 1] = (byte) ((cCharAt3 & '?') | 128);
                        } else if (55296 > cCharAt3 || cCharAt3 >= 57344) {
                            bArr[i4] = (byte) ((cCharAt3 >> '\f') | 224);
                            bArr[i4 + 1] = (byte) (((cCharAt3 >> 6) & 63) | 128);
                            i4 += 3;
                            bArr[i4 + 2] = (byte) ((cCharAt3 & '?') | 128);
                        } else if (j.g(cCharAt3, 56319) > 0 || length2 <= (i2 = i3 + 1) || 56320 > (cCharAt = str.charAt(i2)) || cCharAt >= 57344) {
                            bArr[i4] = 63;
                            i3++;
                            i4++;
                        } else {
                            int iCharAt = ((cCharAt3 << '\n') + str.charAt(i2)) - 56613888;
                            bArr[i4] = (byte) ((iCharAt >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                            bArr[i4 + 1] = (byte) (((iCharAt >> 12) & 63) | 128);
                            bArr[i4 + 2] = (byte) (((iCharAt >> 6) & 63) | 128);
                            i4 += 4;
                            bArr[i4 + 3] = (byte) ((iCharAt & 63) | 128);
                            i3 += 2;
                        }
                        i3++;
                    }
                }
                byte[] bArrCopyOf = Arrays.copyOf(bArr, i4);
                j.d(bArrCopyOf, "copyOf(this, newSize)");
                return bArrCopyOf;
            }
            bArr[i3] = (byte) cCharAt2;
            i3++;
        }
        byte[] bArrCopyOf2 = Arrays.copyOf(bArr, str.length());
        j.d(bArrCopyOf2, "copyOf(this, newSize)");
        return bArrCopyOf2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0091, code lost:
    
        if ((r16[r5] & 192) == 128) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00fc, code lost:
    
        if ((r16[r5] & 192) == 128) goto L73;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String commonToUtf8String(@org.jetbrains.annotations.NotNull byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._Utf8Kt.commonToUtf8String(byte[], int, int):java.lang.String");
    }

    public static /* synthetic */ String commonToUtf8String$default(byte[] bArr, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = 0;
        }
        if ((i4 & 2) != 0) {
            i3 = bArr.length;
        }
        return commonToUtf8String(bArr, i2, i3);
    }
}
