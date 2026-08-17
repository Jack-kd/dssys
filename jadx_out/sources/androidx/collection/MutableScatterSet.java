package androidx.collection;

import androidx.annotation.IntRange;
import androidx.exifinterface.media.ExifInterface;
import com.anythink.core.common.f.f;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.collections.l;
import kotlin.h;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.j;
import kotlin.sequences.g;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010#\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001AB\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0013\u0010\fJ\u0017\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0015\u0010\u0006J\u000f\u0010\u0016\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\fJ \u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0018H\u0082\b¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00028\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010#\u001a\u00020\u001c2\u000e\u0010\"\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000!¢\u0006\u0004\b#\u0010$J\u001b\u0010#\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000%¢\u0006\u0004\b#\u0010&J\u001b\u0010#\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000'¢\u0006\u0004\b#\u0010(J\u001b\u0010#\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b#\u0010)J\u001b\u0010#\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000*¢\u0006\u0004\b#\u0010+J \u0010\u001f\u001a\u00020\u00072\u000e\u0010\"\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000!H\u0086\u0002¢\u0006\u0004\b\u001f\u0010,J\u001e\u0010\u001f\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000%H\u0086\u0002¢\u0006\u0004\b\u001f\u0010-J\u001e\u0010\u001f\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000'H\u0086\u0002¢\u0006\u0004\b\u001f\u0010.J\u001e\u0010\u001f\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\u0002¢\u0006\u0004\b\u001f\u0010/J\u001e\u0010\u001f\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0086\u0002¢\u0006\u0004\b\u001f\u00100J\u0015\u00101\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00028\u0000¢\u0006\u0004\b1\u0010\u001eJ\u0018\u00102\u001a\u00020\u00072\u0006\u0010\r\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b2\u0010 J\u001d\u00103\u001a\u00020\u001c2\u000e\u0010\"\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000!¢\u0006\u0004\b3\u0010$J\u001b\u00103\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000'¢\u0006\u0004\b3\u0010(J\u001b\u00103\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000%¢\u0006\u0004\b3\u0010&J\u001b\u00103\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b3\u0010)J\u001b\u00103\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000*¢\u0006\u0004\b3\u0010+J \u00102\u001a\u00020\u00072\u000e\u0010\"\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000!H\u0086\u0002¢\u0006\u0004\b2\u0010,J\u001e\u00102\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000'H\u0086\u0002¢\u0006\u0004\b2\u0010.J\u001e\u00102\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000%H\u0086\u0002¢\u0006\u0004\b2\u0010-J\u001e\u00102\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\u0002¢\u0006\u0004\b2\u0010/J\u001e\u00102\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0086\u0002¢\u0006\u0004\b2\u00100J'\u00106\u001a\u00020\u00072\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001c04H\u0086\bø\u0001\u0000¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0003H\u0001¢\u0006\u0004\b8\u0010\u0006J\r\u00109\u001a\u00020\u0007¢\u0006\u0004\b9\u0010\fJ\u000f\u0010:\u001a\u00020\u0003H\u0007¢\u0006\u0004\b:\u0010;J\u0013\u0010=\u001a\b\u0012\u0004\u0012\u00028\u00000<¢\u0006\u0004\b=\u0010>R\u0016\u0010?\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006B"}, d2 = {"Landroidx/collection/MutableScatterSet;", ExifInterface.LONGITUDE_EAST, "Landroidx/collection/ScatterSet;", "", "initialCapacity", "<init>", "(I)V", "Lkotlin/j;", "initializeStorage", "capacity", "initializeMetadata", "initializeGrowth", "()V", "element", "findAbsoluteInsertIndex", "(Ljava/lang/Object;)I", "hash1", "findFirstAvailableSlot", "(I)I", "adjustStorage", "newCapacity", "resizeStorage", "removeDeletedMarkers", com.umeng.ccg.a.f49746H, "", f.a.f3244d, "writeMetadata", "(IJ)V", "", "add", "(Ljava/lang/Object;)Z", "plusAssign", "(Ljava/lang/Object;)V", "", "elements", "addAll", "([Ljava/lang/Object;)Z", "", "(Ljava/lang/Iterable;)Z", "Lkotlin/sequences/g;", "(Lkotlin/sequences/g;)Z", "(Landroidx/collection/ScatterSet;)Z", "Landroidx/collection/ObjectList;", "(Landroidx/collection/ObjectList;)Z", "([Ljava/lang/Object;)V", "(Ljava/lang/Iterable;)V", "(Lkotlin/sequences/g;)V", "(Landroidx/collection/ScatterSet;)V", "(Landroidx/collection/ObjectList;)V", "remove", "minusAssign", "removeAll", "Lkotlin/Function1;", "predicate", "removeIf", "(Lkotlin/jvm/functions/Function1;)V", "removeElementAt", "clear", "trim", "()I", "", "asMutableSet", "()Ljava/util/Set;", "growthLimit", "I", "MutableSetWrapper", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/MutableScatterSet\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 7 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 8 ObjectList.kt\nandroidx/collection/ObjectList\n*L\n1#1,1100:1\n1018#1,2:1285\n1022#1,5:1293\n1018#1,2:1324\n1022#1,5:1332\n1018#1,2:1349\n1022#1,5:1357\n1018#1,2:1363\n1022#1,5:1371\n1#2:1101\n1672#3,6:1102\n1826#3:1125\n1688#3:1129\n1605#3,3:1148\n1619#3:1152\n1615#3:1155\n1795#3,3:1159\n1809#3,3:1163\n1733#3:1167\n1721#3:1169\n1715#3:1170\n1728#3:1175\n1818#3:1177\n1605#3,3:1187\n1619#3:1191\n1615#3:1194\n1795#3,3:1198\n1809#3,3:1202\n1733#3:1206\n1721#3:1208\n1715#3:1209\n1728#3:1214\n1818#3:1216\n1826#3:1242\n1688#3:1246\n1826#3:1271\n1688#3:1275\n1672#3,6:1287\n1672#3,6:1298\n1605#3,3:1304\n1615#3:1307\n1619#3:1308\n1795#3,3:1309\n1809#3,3:1312\n1733#3:1315\n1721#3:1316\n1715#3:1317\n1728#3:1318\n1818#3:1319\n1682#3:1320\n1661#3:1321\n1680#3:1322\n1661#3:1323\n1672#3,6:1326\n1795#3,3:1337\n1826#3:1340\n1715#3:1341\n1685#3:1342\n1661#3:1343\n1605#3,3:1344\n1615#3:1347\n1619#3:1348\n1672#3,6:1351\n1661#3:1362\n1672#3,6:1365\n1672#3,6:1376\n1672#3,6:1382\n13579#4,2:1108\n13579#4,2:1225\n1855#5,2:1110\n1855#5,2:1229\n1295#6,2:1112\n1295#6,2:1227\n267#7,4:1114\n237#7,7:1118\n248#7,3:1126\n251#7,2:1130\n272#7,2:1132\n254#7,6:1134\n274#7:1140\n433#7:1147\n434#7:1151\n436#7,2:1153\n438#7,3:1156\n441#7:1162\n442#7:1166\n443#7:1168\n444#7,4:1171\n450#7:1176\n451#7,8:1178\n433#7:1186\n434#7:1190\n436#7,2:1192\n438#7,3:1195\n441#7:1201\n442#7:1205\n443#7:1207\n444#7,4:1210\n450#7:1215\n451#7,8:1217\n267#7,4:1231\n237#7,7:1235\n248#7,3:1243\n251#7,2:1247\n272#7,2:1249\n254#7,6:1251\n274#7:1257\n237#7,7:1264\n248#7,3:1272\n251#7,9:1276\n305#8,6:1141\n305#8,6:1258\n*S KotlinDebug\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/MutableScatterSet\n*L\n857#1:1285,2\n857#1:1293,5\n917#1:1324,2\n917#1:1332,5\n989#1:1349,2\n989#1:1357,5\n1004#1:1363,2\n1004#1:1371,5\n567#1:1102,6\n692#1:1125\n692#1:1129\n714#1:1148,3\n714#1:1152\n714#1:1155\n714#1:1159,3\n714#1:1163,3\n714#1:1167\n714#1:1169\n714#1:1170\n714#1:1175\n714#1:1177\n727#1:1187,3\n727#1:1191\n727#1:1194\n727#1:1198,3\n727#1:1202,3\n727#1:1206\n727#1:1208\n727#1:1209\n727#1:1214\n727#1:1216\n823#1:1242\n823#1:1246\n843#1:1271\n843#1:1275\n857#1:1287,6\n868#1:1298,6\n882#1:1304,3\n883#1:1307\n884#1:1308\n891#1:1309,3\n892#1:1312,3\n893#1:1315\n894#1:1316\n894#1:1317\n898#1:1318\n901#1:1319\n910#1:1320\n910#1:1321\n916#1:1322\n916#1:1323\n917#1:1326,6\n931#1:1337,3\n932#1:1340\n934#1:1341\n984#1:1342\n984#1:1343\n986#1:1344,3\n987#1:1347\n989#1:1348\n989#1:1351,6\n1002#1:1362\n1004#1:1365,6\n1019#1:1376,6\n1025#1:1382,6\n662#1:1108,2\n793#1:1225,2\n672#1:1110,2\n813#1:1229,2\n682#1:1112,2\n803#1:1227,2\n692#1:1114,4\n692#1:1118,7\n692#1:1126,3\n692#1:1130,2\n692#1:1132,2\n692#1:1134,6\n692#1:1140\n714#1:1147\n714#1:1151\n714#1:1153,2\n714#1:1156,3\n714#1:1162\n714#1:1166\n714#1:1168\n714#1:1171,4\n714#1:1176\n714#1:1178,8\n727#1:1186\n727#1:1190\n727#1:1192,2\n727#1:1195,3\n727#1:1201\n727#1:1205\n727#1:1207\n727#1:1210,4\n727#1:1215\n727#1:1217,8\n823#1:1231,4\n823#1:1235,7\n823#1:1243,3\n823#1:1247,2\n823#1:1249,2\n823#1:1251,6\n823#1:1257\n843#1:1264,7\n843#1:1272,3\n843#1:1276,9\n702#1:1141,6\n833#1:1258,6\n*E\n"})
/* loaded from: classes.dex */
public final class MutableScatterSet<E> extends ScatterSet<E> {
    private int growthLimit;

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010)\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\f0\u0001R\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\f\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0014\u0010\tJ\u001d\u0010\u0015\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016¢\u0006\u0004\b\u0015\u0010\rJ\u001d\u0010\u0016\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016¢\u0006\u0004\b\u0016\u0010\r¨\u0006\u0017"}, d2 = {"Landroidx/collection/MutableScatterSet$MutableSetWrapper;", "Landroidx/collection/ScatterSet$SetWrapper;", "Landroidx/collection/ScatterSet;", "", "<init>", "(Landroidx/collection/MutableScatterSet;)V", "element", "", "add", "(Ljava/lang/Object;)Z", "", "elements", "addAll", "(Ljava/util/Collection;)Z", "Lkotlin/j;", "clear", "()V", "", "iterator", "()Ljava/util/Iterator;", "remove", "retainAll", "removeAll", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/MutableScatterSet$MutableSetWrapper\n+ 2 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1100:1\n237#2,7:1101\n248#2,3:1109\n251#2,9:1113\n1826#3:1108\n1688#3:1112\n*S KotlinDebug\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/MutableScatterSet$MutableSetWrapper\n*L\n1080#1:1101,7\n1080#1:1109,3\n1080#1:1113,9\n1080#1:1108\n1080#1:1112\n*E\n"})
    public final class MutableSetWrapper extends ScatterSet<E>.SetWrapper implements Set<E>, B1.a {
        public MutableSetWrapper() {
            super();
        }

        @Override // androidx.collection.ScatterSet.SetWrapper, java.util.Set, java.util.Collection
        public boolean add(E element) {
            return MutableScatterSet.this.add(element);
        }

        @Override // androidx.collection.ScatterSet.SetWrapper, java.util.Set, java.util.Collection
        public boolean addAll(@NotNull Collection<? extends E> elements) {
            j.e(elements, "elements");
            return MutableScatterSet.this.addAll(elements);
        }

        @Override // androidx.collection.ScatterSet.SetWrapper, java.util.Set, java.util.Collection
        public void clear() {
            MutableScatterSet.this.clear();
        }

        @Override // androidx.collection.ScatterSet.SetWrapper, java.util.Set, java.util.Collection, java.lang.Iterable
        @NotNull
        public Iterator<E> iterator() {
            return new MutableScatterSet$MutableSetWrapper$iterator$1(MutableScatterSet.this);
        }

        @Override // androidx.collection.ScatterSet.SetWrapper, java.util.Set, java.util.Collection
        public boolean remove(Object element) {
            return MutableScatterSet.this.remove(element);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.collection.ScatterSet.SetWrapper, java.util.Set, java.util.Collection
        public boolean removeAll(@NotNull Collection<? extends Object> elements) {
            j.e(elements, "elements");
            int i2 = MutableScatterSet.this.get_size();
            Iterator<? extends Object> it = elements.iterator();
            while (it.hasNext()) {
                MutableScatterSet.this.minusAssign((MutableScatterSet<E>) it.next());
            }
            return i2 != MutableScatterSet.this.get_size();
        }

        @Override // androidx.collection.ScatterSet.SetWrapper, java.util.Set, java.util.Collection
        public boolean retainAll(@NotNull Collection<? extends Object> elements) {
            j.e(elements, "elements");
            MutableScatterSet<E> mutableScatterSet = MutableScatterSet.this;
            long[] jArr = mutableScatterSet.metadata;
            int length = jArr.length - 2;
            if (length < 0) {
                return false;
            }
            int i2 = 0;
            boolean z2 = false;
            while (true) {
                long j2 = jArr[i2];
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                    for (int i4 = 0; i4 < i3; i4++) {
                        if ((255 & j2) < 128) {
                            int i5 = (i2 << 3) + i4;
                            if (!elements.contains(mutableScatterSet.elements[i5])) {
                                mutableScatterSet.removeElementAt(i5);
                                z2 = true;
                            }
                        }
                        j2 >>= 8;
                    }
                    if (i3 != 8) {
                        return z2;
                    }
                }
                if (i2 == length) {
                    return z2;
                }
                i2++;
            }
        }
    }

    public MutableScatterSet() {
        this(0, 1, null);
    }

    private final void adjustStorage() {
        if (this._capacity <= 8 || Long.compare(h.b(h.b(this._size) * 32) ^ Long.MIN_VALUE, h.b(h.b(this._capacity) * 25) ^ Long.MIN_VALUE) > 0) {
            resizeStorage(ScatterMapKt.nextCapacity(this._capacity));
        } else {
            removeDeletedMarkers();
        }
    }

    private final int findAbsoluteInsertIndex(E element) {
        int iHashCode = (element != null ? element.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
        int i2 = iHashCode ^ (iHashCode << 16);
        int i3 = i2 >>> 7;
        int i4 = i2 & 127;
        int i5 = this._capacity;
        int i6 = i3 & i5;
        int i7 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i8 = i6 >> 3;
            int i9 = (i6 & 7) << 3;
            long j2 = ((jArr[i8 + 1] << (64 - i9)) & ((-i9) >> 63)) | (jArr[i8] >>> i9);
            long j3 = i4;
            int i10 = i4;
            long j4 = j2 ^ (j3 * ScatterMapKt.BitmaskLsb);
            for (long j5 = (~j4) & (j4 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j5 != 0; j5 &= j5 - 1) {
                int iNumberOfTrailingZeros = (i6 + (Long.numberOfTrailingZeros(j5) >> 3)) & i5;
                if (j.a(this.elements[iNumberOfTrailingZeros], element)) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j2) << 6) & j2 & (-9187201950435737472L)) != 0) {
                int iFindFirstAvailableSlot = findFirstAvailableSlot(i3);
                if (this.growthLimit == 0 && ((this.metadata[iFindFirstAvailableSlot >> 3] >> ((iFindFirstAvailableSlot & 7) << 3)) & 255) != 254) {
                    adjustStorage();
                    iFindFirstAvailableSlot = findFirstAvailableSlot(i3);
                }
                this._size++;
                int i11 = this.growthLimit;
                long[] jArr2 = this.metadata;
                int i12 = iFindFirstAvailableSlot >> 3;
                long j6 = jArr2[i12];
                int i13 = (iFindFirstAvailableSlot & 7) << 3;
                this.growthLimit = i11 - (((j6 >> i13) & 255) == 128 ? 1 : 0);
                jArr2[i12] = (j6 & (~(255 << i13))) | (j3 << i13);
                int i14 = this._capacity;
                int i15 = ((iFindFirstAvailableSlot - 7) & i14) + (i14 & 7);
                int i16 = i15 >> 3;
                int i17 = (i15 & 7) << 3;
                jArr2[i16] = ((~(255 << i17)) & jArr2[i16]) | (j3 << i17);
                return iFindFirstAvailableSlot;
            }
            i7 += 8;
            i6 = (i6 + i7) & i5;
            i4 = i10;
        }
    }

    private final int findFirstAvailableSlot(int hash1) {
        int i2 = this._capacity;
        int i3 = hash1 & i2;
        int i4 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i5 = i3 >> 3;
            int i6 = (i3 & 7) << 3;
            long j2 = ((jArr[i5 + 1] << (64 - i6)) & ((-i6) >> 63)) | (jArr[i5] >>> i6);
            long j3 = j2 & ((~j2) << 7) & (-9187201950435737472L);
            if (j3 != 0) {
                return (i3 + (Long.numberOfTrailingZeros(j3) >> 3)) & i2;
            }
            i4 += 8;
            i3 = (i3 + i4) & i2;
        }
    }

    private final void initializeGrowth() {
        this.growthLimit = ScatterMapKt.loadedCapacity(get_capacity()) - this._size;
    }

    private final void initializeMetadata(int capacity) {
        long[] jArr;
        if (capacity == 0) {
            jArr = ScatterMapKt.EmptyGroup;
        } else {
            long[] jArr2 = new long[((capacity + 15) & (-8)) >> 3];
            l.t(jArr2, -9187201950435737472L, 0, 0, 6, null);
            jArr = jArr2;
        }
        this.metadata = jArr;
        int i2 = capacity >> 3;
        long j2 = 255 << ((capacity & 7) << 3);
        jArr[i2] = (jArr[i2] & (~j2)) | j2;
        initializeGrowth();
    }

    private final void initializeStorage(int initialCapacity) {
        int iMax = initialCapacity > 0 ? Math.max(7, ScatterMapKt.normalizeCapacity(initialCapacity)) : 0;
        this._capacity = iMax;
        initializeMetadata(iMax);
        this.elements = new Object[iMax];
    }

    private final void removeDeletedMarkers() {
        long[] jArr = this.metadata;
        int i2 = this._capacity;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i4 >> 3;
            int i6 = (i4 & 7) << 3;
            if (((jArr[i5] >> i6) & 255) == 254) {
                long[] jArr2 = this.metadata;
                jArr2[i5] = (128 << i6) | (jArr2[i5] & (~(255 << i6)));
                int i7 = this._capacity;
                int i8 = ((i4 - 7) & i7) + (i7 & 7);
                int i9 = i8 >> 3;
                int i10 = (i8 & 7) << 3;
                jArr2[i9] = ((~(255 << i10)) & jArr2[i9]) | (128 << i10);
                i3++;
            }
        }
        this.growthLimit += i3;
    }

    private final void resizeStorage(int newCapacity) {
        int i2;
        long[] jArr = this.metadata;
        Object[] objArr = this.elements;
        int i3 = this._capacity;
        initializeStorage(newCapacity);
        Object[] objArr2 = this.elements;
        int i4 = 0;
        while (i4 < i3) {
            if (((jArr[i4 >> 3] >> ((i4 & 7) << 3)) & 255) < 128) {
                Object obj = objArr[i4];
                int iHashCode = (obj != null ? obj.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
                int i5 = iHashCode ^ (iHashCode << 16);
                int iFindFirstAvailableSlot = findFirstAvailableSlot(i5 >>> 7);
                long j2 = i5 & 127;
                long[] jArr2 = this.metadata;
                int i6 = iFindFirstAvailableSlot >> 3;
                int i7 = (iFindFirstAvailableSlot & 7) << 3;
                i2 = i4;
                jArr2[i6] = (jArr2[i6] & (~(255 << i7))) | (j2 << i7);
                int i8 = this._capacity;
                int i9 = ((iFindFirstAvailableSlot - 7) & i8) + (i8 & 7);
                int i10 = i9 >> 3;
                int i11 = (i9 & 7) << 3;
                jArr2[i10] = ((~(255 << i11)) & jArr2[i10]) | (j2 << i11);
                objArr2[iFindFirstAvailableSlot] = obj;
            } else {
                i2 = i4;
            }
            i4 = i2 + 1;
        }
    }

    private final void writeMetadata(int index, long value) {
        long[] jArr = this.metadata;
        int i2 = index >> 3;
        int i3 = (index & 7) << 3;
        jArr[i2] = (jArr[i2] & (~(255 << i3))) | (value << i3);
        int i4 = this._capacity;
        int i5 = ((index - 7) & i4) + (i4 & 7);
        int i6 = i5 >> 3;
        int i7 = (i5 & 7) << 3;
        jArr[i6] = (value << i7) | (jArr[i6] & (~(255 << i7)));
    }

    public final boolean add(E element) {
        int i2 = get_size();
        this.elements[findAbsoluteInsertIndex(element)] = element;
        return get_size() != i2;
    }

    public final boolean addAll(@NotNull E[] elements) {
        j.e(elements, "elements");
        int i2 = get_size();
        plusAssign((Object[]) elements);
        return i2 != get_size();
    }

    @NotNull
    public final Set<E> asMutableSet() {
        return new MutableSetWrapper();
    }

    public final void clear() {
        this._size = 0;
        long[] jArr = this.metadata;
        if (jArr != ScatterMapKt.EmptyGroup) {
            l.t(jArr, -9187201950435737472L, 0, 0, 6, null);
            long[] jArr2 = this.metadata;
            int i2 = this._capacity;
            int i3 = i2 >> 3;
            long j2 = 255 << ((i2 & 7) << 3);
            jArr2[i3] = (jArr2[i3] & (~j2)) | j2;
        }
        l.r(this.elements, null, 0, this._capacity);
        initializeGrowth();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0069, code lost:
    
        if (((r4 & ((~r4) << 6)) & (-9187201950435737472L)) == 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006b, code lost:
    
        r10 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void minusAssign(E r14) {
        /*
            r13 = this;
            r0 = 0
            if (r14 == 0) goto L8
            int r1 = r14.hashCode()
            goto L9
        L8:
            r1 = r0
        L9:
            r2 = -862048943(0xffffffffcc9e2d51, float:-8.293031E7)
            int r1 = r1 * r2
            int r2 = r1 << 16
            r1 = r1 ^ r2
            r2 = r1 & 127(0x7f, float:1.78E-43)
            int r3 = r13._capacity
            int r1 = r1 >>> 7
        L16:
            r1 = r1 & r3
            long[] r4 = r13.metadata
            int r5 = r1 >> 3
            r6 = r1 & 7
            int r6 = r6 << 3
            r7 = r4[r5]
            long r7 = r7 >>> r6
            int r5 = r5 + 1
            r9 = r4[r5]
            int r4 = 64 - r6
            long r4 = r9 << r4
            long r9 = (long) r6
            long r9 = -r9
            r6 = 63
            long r9 = r9 >> r6
            long r4 = r4 & r9
            long r4 = r4 | r7
            long r6 = (long) r2
            r8 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r6 = r6 * r8
            long r6 = r6 ^ r4
            long r8 = r6 - r8
            long r6 = ~r6
            long r6 = r6 & r8
            r8 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r6 = r6 & r8
        L43:
            r10 = 0
            int r12 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r12 == 0) goto L62
            int r10 = java.lang.Long.numberOfTrailingZeros(r6)
            int r10 = r10 >> 3
            int r10 = r10 + r1
            r10 = r10 & r3
            java.lang.Object[] r11 = r13.elements
            r11 = r11[r10]
            boolean r11 = kotlin.jvm.internal.j.a(r11, r14)
            if (r11 == 0) goto L5c
            goto L6c
        L5c:
            r10 = 1
            long r10 = r6 - r10
            long r6 = r6 & r10
            goto L43
        L62:
            long r6 = ~r4
            r12 = 6
            long r6 = r6 << r12
            long r4 = r4 & r6
            long r4 = r4 & r8
            int r4 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r4 == 0) goto L72
            r10 = -1
        L6c:
            if (r10 < 0) goto L71
            r13.removeElementAt(r10)
        L71:
            return
        L72:
            int r0 = r0 + 8
            int r1 = r1 + r0
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableScatterSet.minusAssign(java.lang.Object):void");
    }

    public final void plusAssign(E element) {
        this.elements[findAbsoluteInsertIndex(element)] = element;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x006e, code lost:
    
        if (((r7 & ((~r7) << 6)) & (-9187201950435737472L)) == 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0070, code lost:
    
        r11 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean remove(E r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = 0
            if (r1 == 0) goto Lc
            int r3 = r1.hashCode()
            goto Ld
        Lc:
            r3 = r2
        Ld:
            r4 = -862048943(0xffffffffcc9e2d51, float:-8.293031E7)
            int r3 = r3 * r4
            int r4 = r3 << 16
            r3 = r3 ^ r4
            r4 = r3 & 127(0x7f, float:1.78E-43)
            int r5 = r0._capacity
            int r3 = r3 >>> 7
            r3 = r3 & r5
            r6 = r2
        L1c:
            long[] r7 = r0.metadata
            int r8 = r3 >> 3
            r9 = r3 & 7
            int r9 = r9 << 3
            r10 = r7[r8]
            long r10 = r10 >>> r9
            r12 = 1
            int r8 = r8 + r12
            r13 = r7[r8]
            int r7 = 64 - r9
            long r7 = r13 << r7
            long r13 = (long) r9
            long r13 = -r13
            r9 = 63
            long r13 = r13 >> r9
            long r7 = r7 & r13
            long r7 = r7 | r10
            long r9 = (long) r4
            r13 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r9 = r9 * r13
            long r9 = r9 ^ r7
            long r13 = r9 - r13
            long r9 = ~r9
            long r9 = r9 & r13
            r13 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r9 = r9 & r13
        L48:
            r15 = 0
            int r11 = (r9 > r15 ? 1 : (r9 == r15 ? 0 : -1))
            if (r11 == 0) goto L67
            int r11 = java.lang.Long.numberOfTrailingZeros(r9)
            int r11 = r11 >> 3
            int r11 = r11 + r3
            r11 = r11 & r5
            java.lang.Object[] r15 = r0.elements
            r15 = r15[r11]
            boolean r15 = kotlin.jvm.internal.j.a(r15, r1)
            if (r15 == 0) goto L61
            goto L71
        L61:
            r15 = 1
            long r15 = r9 - r15
            long r9 = r9 & r15
            goto L48
        L67:
            long r9 = ~r7
            r11 = 6
            long r9 = r9 << r11
            long r7 = r7 & r9
            long r7 = r7 & r13
            int r7 = (r7 > r15 ? 1 : (r7 == r15 ? 0 : -1))
            if (r7 == 0) goto L7a
            r11 = -1
        L71:
            if (r11 < 0) goto L74
            r2 = r12
        L74:
            if (r2 == 0) goto L79
            r0.removeElementAt(r11)
        L79:
            return r2
        L7a:
            int r6 = r6 + 8
            int r3 = r3 + r6
            r3 = r3 & r5
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableScatterSet.remove(java.lang.Object):boolean");
    }

    public final boolean removeAll(@NotNull E[] elements) {
        j.e(elements, "elements");
        int i2 = get_size();
        minusAssign((Object[]) elements);
        return i2 != get_size();
    }

    @PublishedApi
    public final void removeElementAt(int index) {
        this._size--;
        long[] jArr = this.metadata;
        int i2 = index >> 3;
        int i3 = (index & 7) << 3;
        jArr[i2] = (jArr[i2] & (~(255 << i3))) | (254 << i3);
        int i4 = this._capacity;
        int i5 = ((index - 7) & i4) + (i4 & 7);
        int i6 = i5 >> 3;
        int i7 = (i5 & 7) << 3;
        jArr[i6] = (jArr[i6] & (~(255 << i7))) | (254 << i7);
        this.elements[index] = null;
    }

    public final void removeIf(@NotNull Function1<? super E, Boolean> predicate) {
        j.e(predicate, "predicate");
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        int i5 = (i2 << 3) + i4;
                        if (predicate.invoke(objArr[i5]).booleanValue()) {
                            removeElementAt(i5);
                        }
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    @IntRange(from = 0)
    public final int trim() {
        int i2 = this._capacity;
        int iNormalizeCapacity = ScatterMapKt.normalizeCapacity(ScatterMapKt.unloadedCapacity(this._size));
        if (iNormalizeCapacity >= i2) {
            return 0;
        }
        resizeStorage(iNormalizeCapacity);
        return i2 - this._capacity;
    }

    public /* synthetic */ MutableScatterSet(int i2, int i3, kotlin.jvm.internal.f fVar) {
        this((i3 & 1) != 0 ? 6 : i2);
    }

    public MutableScatterSet(int i2) {
        super(null);
        if (i2 >= 0) {
            initializeStorage(ScatterMapKt.unloadedCapacity(i2));
            return;
        }
        throw new IllegalArgumentException("Capacity must be a positive value.");
    }

    public final void plusAssign(@NotNull E[] elements) {
        j.e(elements, "elements");
        for (E e2 : elements) {
            plusAssign((MutableScatterSet<E>) e2);
        }
    }

    public final boolean addAll(@NotNull Iterable<? extends E> elements) {
        j.e(elements, "elements");
        int i2 = get_size();
        plusAssign((Iterable) elements);
        return i2 != get_size();
    }

    public final boolean removeAll(@NotNull g elements) {
        j.e(elements, "elements");
        int i2 = get_size();
        minusAssign(elements);
        return i2 != get_size();
    }

    public final void plusAssign(@NotNull Iterable<? extends E> elements) {
        j.e(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            plusAssign((MutableScatterSet<E>) it.next());
        }
    }

    public final boolean addAll(@NotNull g elements) {
        j.e(elements, "elements");
        int i2 = get_size();
        plusAssign(elements);
        return i2 != get_size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void plusAssign(@NotNull g elements) {
        j.e(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            plusAssign((MutableScatterSet<E>) it.next());
        }
    }

    public final boolean removeAll(@NotNull Iterable<? extends E> elements) {
        j.e(elements, "elements");
        int i2 = get_size();
        minusAssign((Iterable) elements);
        return i2 != get_size();
    }

    public final void minusAssign(@NotNull E[] elements) {
        j.e(elements, "elements");
        for (E e2 : elements) {
            minusAssign((MutableScatterSet<E>) e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void plusAssign(@NotNull ScatterSet<E> elements) {
        j.e(elements, "elements");
        Object[] objArr = elements.elements;
        long[] jArr = elements.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        plusAssign((MutableScatterSet<E>) objArr[(i2 << 3) + i4]);
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    public final boolean addAll(@NotNull ScatterSet<E> elements) {
        j.e(elements, "elements");
        int i2 = get_size();
        plusAssign((ScatterSet) elements);
        return i2 != get_size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(@NotNull g elements) {
        j.e(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            minusAssign((MutableScatterSet<E>) it.next());
        }
    }

    public final boolean removeAll(@NotNull ScatterSet<E> elements) {
        j.e(elements, "elements");
        int i2 = get_size();
        minusAssign((ScatterSet) elements);
        return i2 != get_size();
    }

    public final void minusAssign(@NotNull Iterable<? extends E> elements) {
        j.e(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            minusAssign((MutableScatterSet<E>) it.next());
        }
    }

    public final boolean addAll(@NotNull ObjectList<E> elements) {
        j.e(elements, "elements");
        int i2 = get_size();
        plusAssign((ObjectList) elements);
        return i2 != get_size();
    }

    public final boolean removeAll(@NotNull ObjectList<E> elements) {
        j.e(elements, "elements");
        int i2 = get_size();
        minusAssign((ObjectList) elements);
        return i2 != get_size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(@NotNull ScatterSet<E> elements) {
        j.e(elements, "elements");
        Object[] objArr = elements.elements;
        long[] jArr = elements.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        minusAssign((MutableScatterSet<E>) objArr[(i2 << 3) + i4]);
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void plusAssign(@NotNull ObjectList<E> elements) {
        j.e(elements, "elements");
        Object[] objArr = elements.content;
        int i2 = elements._size;
        for (int i3 = 0; i3 < i2; i3++) {
            plusAssign((MutableScatterSet<E>) objArr[i3]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(@NotNull ObjectList<E> elements) {
        j.e(elements, "elements");
        Object[] objArr = elements.content;
        int i2 = elements._size;
        for (int i3 = 0; i3 < i2; i3++) {
            minusAssign((MutableScatterSet<E>) objArr[i3]);
        }
    }
}
