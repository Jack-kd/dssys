package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.exifinterface.media.ExifInterface;
import androidx.room.AmbiguousColumnResolver;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.B;
import kotlin.collections.I;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001:\u0003\u001d\u001e\u001fB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0004H\u0007¢\u0006\u0004\b\t\u0010\nJQ\u0010\u0013\u001a\u00020\u00112\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042$\u0010\u0012\u001a \u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0004\u0012\u00020\u00110\u000fH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J]\u0010\u001b\u001a\u00020\u0011\"\u0004\b\u0000\u0010\u00152\u0012\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\u000b2\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00102\u0018\u0010\u001a\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\u0004\u0012\u00020\u00110\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Landroidx/room/AmbiguousColumnResolver;", "", "<init>", "()V", "", "", "resultColumns", "mappings", "", "resolve", "([Ljava/lang/String;[[Ljava/lang/String;)[[I", "", "Landroidx/room/AmbiguousColumnResolver$ResultColumn;", "content", "pattern", "Lkotlin/Function3;", "", "Lkotlin/j;", "onHashMatch", "rabinKarpSearch", "(Ljava/util/List;[Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V", ExifInterface.GPS_DIRECTION_TRUE, "", "current", "depth", "Lkotlin/Function1;", "block", "dfs", "(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/functions/Function1;)V", "Match", "ResultColumn", "Solution", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class AmbiguousColumnResolver {

    @NotNull
    public static final AmbiguousColumnResolver INSTANCE = new AmbiguousColumnResolver();

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\n\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$Match;", "", "LE1/d;", "resultRange", "", "", "resultIndices", "<init>", "(LE1/d;Ljava/util/List;)V", "LE1/d;", "getResultRange", "()LE1/d;", "Ljava/util/List;", "getResultIndices", "()Ljava/util/List;", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Match {

        @NotNull
        private final List<Integer> resultIndices;

        @NotNull
        private final E1.d resultRange;

        public Match(@NotNull E1.d resultRange, @NotNull List<Integer> resultIndices) {
            kotlin.jvm.internal.j.e(resultRange, "resultRange");
            kotlin.jvm.internal.j.e(resultIndices, "resultIndices");
            this.resultRange = resultRange;
            this.resultIndices = resultIndices;
        }

        @NotNull
        public final List<Integer> getResultIndices() {
            return this.resultIndices;
        }

        @NotNull
        public final E1.d getResultRange() {
            return this.resultRange;
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$ResultColumn;", "", "name", "", com.umeng.ccg.a.f49746H, "", "(Ljava/lang/String;I)V", "getIndex", "()I", "getName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final /* data */ class ResultColumn {
        private final int index;

        @NotNull
        private final String name;

        public ResultColumn(@NotNull String name, int i2) {
            kotlin.jvm.internal.j.e(name, "name");
            this.name = name;
            this.index = i2;
        }

        public static /* synthetic */ ResultColumn copy$default(ResultColumn resultColumn, String str, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                str = resultColumn.name;
            }
            if ((i3 & 2) != 0) {
                i2 = resultColumn.index;
            }
            return resultColumn.copy(str, i2);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* renamed from: component2, reason: from getter */
        public final int getIndex() {
            return this.index;
        }

        @NotNull
        public final ResultColumn copy(@NotNull String name, int index) {
            kotlin.jvm.internal.j.e(name, "name");
            return new ResultColumn(name, index);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ResultColumn)) {
                return false;
            }
            ResultColumn resultColumn = (ResultColumn) other;
            return kotlin.jvm.internal.j.a(this.name, resultColumn.name) && this.index == resultColumn.index;
        }

        public final int getIndex() {
            return this.index;
        }

        @NotNull
        public final String getName() {
            return this.name;
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + Integer.hashCode(this.index);
        }

        @NotNull
        public String toString() {
            return "ResultColumn(name=" + this.name + ", index=" + this.index + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u0011\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0000H\u0096\u0002R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0011"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$Solution;", "", "matches", "", "Landroidx/room/AmbiguousColumnResolver$Match;", "coverageOffset", "", "overlaps", "(Ljava/util/List;II)V", "getCoverageOffset", "()I", "getMatches", "()Ljava/util/List;", "getOverlaps", "compareTo", "other", "Companion", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Solution implements Comparable<Solution> {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);

        @NotNull
        private static final Solution NO_SOLUTION = new Solution(kotlin.collections.q.l(), Integer.MAX_VALUE, Integer.MAX_VALUE);
        private final int coverageOffset;

        @NotNull
        private final List<Match> matches;
        private final int overlaps;

        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0007\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$Solution$Companion;", "", "()V", "NO_SOLUTION", "Landroidx/room/AmbiguousColumnResolver$Solution;", "getNO_SOLUTION", "()Landroidx/room/AmbiguousColumnResolver$Solution;", "build", "matches", "", "Landroidx/room/AmbiguousColumnResolver$Match;", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
                this();
            }

            @NotNull
            public final Solution build(@NotNull List<Match> matches) {
                kotlin.jvm.internal.j.e(matches, "matches");
                List<Match> list = matches;
                int i2 = 0;
                int iB = 0;
                for (Match match : list) {
                    iB += ((match.getResultRange().b() - match.getResultRange().a()) + 1) - match.getResultIndices().size();
                }
                Iterator<T> it = list.iterator();
                if (!it.hasNext()) {
                    throw new NoSuchElementException();
                }
                int iA = ((Match) it.next()).getResultRange().a();
                while (it.hasNext()) {
                    int iA2 = ((Match) it.next()).getResultRange().a();
                    if (iA > iA2) {
                        iA = iA2;
                    }
                }
                Iterator<T> it2 = list.iterator();
                if (!it2.hasNext()) {
                    throw new NoSuchElementException();
                }
                int iB2 = ((Match) it2.next()).getResultRange().b();
                while (it2.hasNext()) {
                    int iB3 = ((Match) it2.next()).getResultRange().b();
                    if (iB2 < iB3) {
                        iB2 = iB3;
                    }
                }
                Iterable dVar = new E1.d(iA, iB2);
                if (!(dVar instanceof Collection) || !((Collection) dVar).isEmpty()) {
                    Iterator it3 = dVar.iterator();
                    int i3 = 0;
                    while (it3.hasNext()) {
                        int iNextInt = ((B) it3).nextInt();
                        Iterator<T> it4 = list.iterator();
                        int i4 = 0;
                        while (true) {
                            if (!it4.hasNext()) {
                                break;
                            }
                            if (((Match) it4.next()).getResultRange().g(iNextInt)) {
                                i4++;
                            }
                            if (i4 > 1) {
                                i3++;
                                if (i3 < 0) {
                                    kotlin.collections.q.t();
                                }
                            }
                        }
                    }
                    i2 = i3;
                }
                return new Solution(matches, iB, i2);
            }

            @NotNull
            public final Solution getNO_SOLUTION() {
                return Solution.NO_SOLUTION;
            }

            private Companion() {
            }
        }

        public Solution(@NotNull List<Match> matches, int i2, int i3) {
            kotlin.jvm.internal.j.e(matches, "matches");
            this.matches = matches;
            this.coverageOffset = i2;
            this.overlaps = i3;
        }

        public final int getCoverageOffset() {
            return this.coverageOffset;
        }

        @NotNull
        public final List<Match> getMatches() {
            return this.matches;
        }

        public final int getOverlaps() {
            return this.overlaps;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NotNull Solution other) {
            kotlin.jvm.internal.j.e(other, "other");
            int iG = kotlin.jvm.internal.j.g(this.overlaps, other.overlaps);
            return iG != 0 ? iG : kotlin.jvm.internal.j.g(this.coverageOffset, other.coverageOffset);
        }
    }

    private AmbiguousColumnResolver() {
    }

    private final <T> void dfs(List<? extends List<? extends T>> content, List<T> current, int depth, Function1<? super List<? extends T>, kotlin.j> block) {
        if (depth == content.size()) {
            block.invoke(kotlin.collections.y.a0(current));
            return;
        }
        Iterator<T> it = content.get(depth).iterator();
        while (it.hasNext()) {
            current.add(it.next());
            INSTANCE.dfs(content, current, depth + 1, block);
            kotlin.collections.v.C(current);
        }
    }

    public static /* synthetic */ void dfs$default(AmbiguousColumnResolver ambiguousColumnResolver, List list, List list2, int i2, Function1 function1, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            list2 = new ArrayList();
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        ambiguousColumnResolver.dfs(list, list2, i2, function1);
    }

    private final void rabinKarpSearch(List<ResultColumn> content, String[] pattern, Function3<? super Integer, ? super Integer, ? super List<ResultColumn>, kotlin.j> onHashMatch) {
        int i2 = 0;
        int iHashCode = 0;
        for (String str : pattern) {
            iHashCode += str.hashCode();
        }
        int length = pattern.length;
        Iterator<T> it = content.subList(0, length).iterator();
        int iHashCode2 = 0;
        while (it.hasNext()) {
            iHashCode2 += ((ResultColumn) it.next()).getName().hashCode();
        }
        while (true) {
            if (iHashCode == iHashCode2) {
                onHashMatch.invoke(Integer.valueOf(i2), Integer.valueOf(length), content.subList(i2, length));
            }
            int i3 = i2 + 1;
            int i4 = length + 1;
            if (i4 > content.size()) {
                return;
            }
            iHashCode2 = (iHashCode2 - content.get(i2).getName().hashCode()) + content.get(length).getName().hashCode();
            i2 = i3;
            length = i4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
    @JvmStatic
    @NotNull
    public static final int[][] resolve(@NotNull String[] resultColumns, @NotNull String[][] mappings) {
        kotlin.jvm.internal.j.e(resultColumns, "resultColumns");
        kotlin.jvm.internal.j.e(mappings, "mappings");
        int length = resultColumns.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            String strSubstring = resultColumns[i3];
            if (strSubstring.charAt(0) == '`' && strSubstring.charAt(strSubstring.length() - 1) == '`') {
                strSubstring = strSubstring.substring(1, strSubstring.length() - 1);
                kotlin.jvm.internal.j.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            }
            Locale US = Locale.US;
            kotlin.jvm.internal.j.d(US, "US");
            String lowerCase = strSubstring.toLowerCase(US);
            kotlin.jvm.internal.j.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            resultColumns[i3] = lowerCase;
        }
        int length2 = mappings.length;
        for (int i4 = 0; i4 < length2; i4++) {
            int length3 = mappings[i4].length;
            for (int i5 = 0; i5 < length3; i5++) {
                String[] strArr = mappings[i4];
                String str = strArr[i5];
                Locale US2 = Locale.US;
                kotlin.jvm.internal.j.d(US2, "US");
                String lowerCase2 = str.toLowerCase(US2);
                kotlin.jvm.internal.j.d(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                strArr[i5] = lowerCase2;
            }
        }
        Set setB = I.b();
        for (String[] strArr2 : mappings) {
            kotlin.collections.v.A(setB, strArr2);
        }
        Set setA = I.a(setB);
        List listC = kotlin.collections.p.c();
        int length4 = resultColumns.length;
        int i6 = 0;
        int i7 = 0;
        while (i6 < length4) {
            String str2 = resultColumns[i6];
            int i8 = i7 + 1;
            if (setA.contains(str2)) {
                listC.add(new ResultColumn(str2, i7));
            }
            i6++;
            i7 = i8;
        }
        List<ResultColumn> listA = kotlin.collections.p.a(listC);
        int length5 = mappings.length;
        final ArrayList arrayList = new ArrayList(length5);
        for (int i9 = 0; i9 < length5; i9++) {
            arrayList.add(new ArrayList());
        }
        int length6 = mappings.length;
        int i10 = 0;
        final int i11 = 0;
        while (i10 < length6) {
            final String[] strArr3 = mappings[i10];
            int i12 = i11 + 1;
            INSTANCE.rabinKarpSearch(listA, strArr3, new Function3<Integer, Integer, List<? extends ResultColumn>, kotlin.j>() { // from class: androidx.room.AmbiguousColumnResolver$resolve$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ kotlin.j invoke(Integer num, Integer num2, List<? extends AmbiguousColumnResolver.ResultColumn> list) {
                    invoke(num.intValue(), num2.intValue(), (List<AmbiguousColumnResolver.ResultColumn>) list);
                    return kotlin.j.f51397a;
                }

                public final void invoke(int i13, int i14, @NotNull List<AmbiguousColumnResolver.ResultColumn> resultColumnsSublist) {
                    Object next;
                    kotlin.jvm.internal.j.e(resultColumnsSublist, "resultColumnsSublist");
                    String[] strArr4 = strArr3;
                    ArrayList arrayList2 = new ArrayList(strArr4.length);
                    for (String str3 : strArr4) {
                        Iterator<T> it = resultColumnsSublist.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                next = it.next();
                                if (kotlin.jvm.internal.j.a(str3, ((AmbiguousColumnResolver.ResultColumn) next).getName())) {
                                    break;
                                }
                            } else {
                                next = null;
                                break;
                            }
                        }
                        AmbiguousColumnResolver.ResultColumn resultColumn = (AmbiguousColumnResolver.ResultColumn) next;
                        if (resultColumn == null) {
                            return;
                        }
                        arrayList2.add(Integer.valueOf(resultColumn.getIndex()));
                    }
                    arrayList.get(i11).add(new AmbiguousColumnResolver.Match(new E1.d(i13, i14 - 1), arrayList2));
                }
            });
            if (((List) arrayList.get(i11)).isEmpty()) {
                ArrayList arrayList2 = new ArrayList(strArr3.length);
                int length7 = strArr3.length;
                for (int i13 = i2; i13 < length7; i13++) {
                    String str3 = strArr3[i13];
                    List listC2 = kotlin.collections.p.c();
                    for (ResultColumn resultColumn : listA) {
                        if (kotlin.jvm.internal.j.a(str3, resultColumn.getName())) {
                            listC2.add(Integer.valueOf(resultColumn.getIndex()));
                        }
                    }
                    List listA2 = kotlin.collections.p.a(listC2);
                    if (listA2.isEmpty()) {
                        throw new IllegalStateException(("Column " + str3 + " not found in result").toString());
                    }
                    arrayList2.add(listA2);
                }
                dfs$default(INSTANCE, arrayList2, null, 0, new Function1<List<? extends Integer>, kotlin.j>() { // from class: androidx.room.AmbiguousColumnResolver$resolve$1$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ kotlin.j invoke(List<? extends Integer> list) {
                        invoke2((List<Integer>) list);
                        return kotlin.j.f51397a;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull List<Integer> indices) {
                        kotlin.jvm.internal.j.e(indices, "indices");
                        List<Integer> list = indices;
                        Iterator<T> it = list.iterator();
                        if (!it.hasNext()) {
                            throw new NoSuchElementException();
                        }
                        int iIntValue = ((Number) it.next()).intValue();
                        while (it.hasNext()) {
                            int iIntValue2 = ((Number) it.next()).intValue();
                            if (iIntValue > iIntValue2) {
                                iIntValue = iIntValue2;
                            }
                        }
                        Iterator<T> it2 = list.iterator();
                        if (!it2.hasNext()) {
                            throw new NoSuchElementException();
                        }
                        int iIntValue3 = ((Number) it2.next()).intValue();
                        while (it2.hasNext()) {
                            int iIntValue4 = ((Number) it2.next()).intValue();
                            if (iIntValue3 < iIntValue4) {
                                iIntValue3 = iIntValue4;
                            }
                        }
                        arrayList.get(i11).add(new AmbiguousColumnResolver.Match(new E1.d(iIntValue, iIntValue3), indices));
                    }
                }, 6, null);
            }
            i10++;
            i11 = i12;
            i2 = 0;
        }
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            int i14 = 0;
            while (i14 < size) {
                Object obj = arrayList.get(i14);
                i14++;
                if (((List) obj).isEmpty()) {
                    throw new IllegalStateException("Failed to find matches for all mappings");
                }
            }
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = Solution.INSTANCE.getNO_SOLUTION();
        dfs$default(INSTANCE, arrayList, null, 0, new Function1<List<? extends Match>, kotlin.j>() { // from class: androidx.room.AmbiguousColumnResolver.resolve.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.j invoke(List<? extends Match> list) {
                invoke2((List<Match>) list);
                return kotlin.j.f51397a;
            }

            /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<Match> it) {
                kotlin.jvm.internal.j.e(it, "it");
                ?? Build = Solution.INSTANCE.build(it);
                if (Build.compareTo(ref$ObjectRef.element) < 0) {
                    ref$ObjectRef.element = Build;
                }
            }
        }, 6, null);
        List<Match> matches = ((Solution) ref$ObjectRef.element).getMatches();
        ArrayList arrayList3 = new ArrayList(kotlin.collections.r.v(matches, 10));
        Iterator<T> it = matches.iterator();
        while (it.hasNext()) {
            arrayList3.add(kotlin.collections.y.Z(((Match) it.next()).getResultIndices()));
        }
        Object[] array = arrayList3.toArray(new int[0][]);
        kotlin.jvm.internal.j.c(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (int[][]) array;
    }
}
