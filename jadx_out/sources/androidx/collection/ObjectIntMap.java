package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import com.anythink.core.common.f.f;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u0016\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\t\b\u0004¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\u0007J\r\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\u0007J\r\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u0007J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J)\u0010\u0013\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00028\u00002\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u0012H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J6\u0010\u001b\u001a\u00020\u00192!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u00190\u0015H\u0081\bø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJK\u0010\u001f\u001a\u00020\u001926\u0010\u001a\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u00190\u001dH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 J6\u0010!\u001a\u00020\u00192!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u00190\u0015H\u0086\bø\u0001\u0000¢\u0006\u0004\b!\u0010\u001cJ6\u0010\"\u001a\u00020\u00192!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u00190\u0015H\u0086\bø\u0001\u0000¢\u0006\u0004\b\"\u0010\u001cJ-\u0010$\u001a\u00020\u00052\u0018\u0010#\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00050\u001dH\u0086\bø\u0001\u0000¢\u0006\u0004\b$\u0010%J-\u0010\u0006\u001a\u00020\u00052\u0018\u0010#\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00050\u001dH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0006\u0010%J\r\u0010&\u001a\u00020\f¢\u0006\u0004\b&\u0010'J-\u0010&\u001a\u00020\f2\u0018\u0010#\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00050\u001dH\u0086\bø\u0001\u0000¢\u0006\u0004\b&\u0010(J\u0018\u0010)\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b)\u0010*J\u0015\u0010+\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00028\u0000¢\u0006\u0004\b+\u0010*J\u0015\u0010,\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\f¢\u0006\u0004\b,\u0010-JA\u00105\u001a\u0002042\b\b\u0002\u0010/\u001a\u00020.2\b\b\u0002\u00100\u001a\u00020.2\b\b\u0002\u00101\u001a\u00020.2\b\b\u0002\u00102\u001a\u00020\f2\b\b\u0002\u00103\u001a\u00020.H\u0007¢\u0006\u0004\b5\u00106J\u007f\u00105\u001a\u0002042\b\b\u0002\u0010/\u001a\u00020.2\b\b\u0002\u00100\u001a\u00020.2\b\b\u0002\u00101\u001a\u00020.2\b\b\u0002\u00102\u001a\u00020\f2\b\b\u0002\u00103\u001a\u00020.28\b\u0004\u00107\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020.0\u001dH\u0087\bø\u0001\u0000¢\u0006\u0004\b5\u00108J\u000f\u00109\u001a\u00020\fH\u0016¢\u0006\u0004\b9\u0010'J\u001a\u0010;\u001a\u00020\u00052\b\u0010:\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b;\u0010*J\u000f\u0010<\u001a\u000204H\u0016¢\u0006\u0004\b<\u0010=J\u0017\u0010>\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00028\u0000H\u0001¢\u0006\u0004\b>\u0010\u000eR\u001c\u0010@\u001a\u00020?8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\b@\u0010A\u0012\u0004\bB\u0010\u0004R$\u0010D\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020C8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bD\u0010E\u0012\u0004\bF\u0010\u0004R\u001c\u0010H\u001a\u00020G8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bH\u0010I\u0012\u0004\bJ\u0010\u0004R\u001c\u0010K\u001a\u00020\f8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bK\u0010L\u0012\u0004\bM\u0010\u0004R\u001c\u0010N\u001a\u00020\f8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bN\u0010L\u0012\u0004\bO\u0010\u0004R\u0011\u0010Q\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\bP\u0010'R\u0011\u0010S\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\bR\u0010'\u0082\u0001\u0001T\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006U"}, d2 = {"Landroidx/collection/ObjectIntMap;", "K", "", "<init>", "()V", "", "any", "()Z", com.baidu.mobads.sdk.internal.a.f10877a, "isEmpty", "isNotEmpty", f.a.f3242b, "", "get", "(Ljava/lang/Object;)I", "defaultValue", "getOrDefault", "(Ljava/lang/Object;I)I", "Lkotlin/Function0;", "getOrElse", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)I", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", com.umeng.ccg.a.f49746H, "Lkotlin/j;", "block", "forEachIndexed", "(Lkotlin/jvm/functions/Function1;)V", "Lkotlin/Function2;", f.a.f3244d, "forEach", "(Lkotlin/jvm/functions/Function2;)V", "forEachKey", "forEachValue", "predicate", "all", "(Lkotlin/jvm/functions/Function2;)Z", "count", "()I", "(Lkotlin/jvm/functions/Function2;)I", "contains", "(Ljava/lang/Object;)Z", "containsKey", "containsValue", "(I)Z", "", "separator", "prefix", "postfix", "limit", "truncated", "", "joinToString", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/String;", "transform", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function2;)Ljava/lang/String;", "hashCode", "other", "equals", "toString", "()Ljava/lang/String;", "findKeyIndex", "", "metadata", "[J", "getMetadata$annotations", "", "keys", "[Ljava/lang/Object;", "getKeys$annotations", "", "values", "[I", "getValues$annotations", "_capacity", "I", "get_capacity$collection$annotations", "_size", "get_size$collection$annotations", "getCapacity", "capacity", "getSize", "size", "Landroidx/collection/MutableObjectIntMap;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nObjectIntMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1074:1\n373#1,6:1077\n383#1,3:1084\n386#1,9:1088\n373#1,6:1097\n383#1,3:1104\n386#1,9:1108\n373#1,6:1117\n383#1,3:1124\n386#1,9:1128\n401#1,4:1137\n373#1,6:1141\n383#1,3:1148\n386#1,2:1152\n406#1,2:1154\n389#1,6:1156\n408#1:1162\n401#1,4:1163\n373#1,6:1167\n383#1,3:1174\n386#1,2:1178\n406#1,2:1180\n389#1,6:1182\n408#1:1188\n401#1,4:1189\n373#1,6:1193\n383#1,3:1200\n386#1,2:1204\n406#1,2:1206\n389#1,6:1208\n408#1:1214\n428#1,3:1215\n373#1,6:1218\n383#1,3:1225\n386#1,2:1229\n431#1,2:1231\n389#1,6:1233\n433#1:1239\n401#1,4:1240\n373#1,6:1244\n383#1,3:1251\n386#1,2:1255\n406#1,2:1257\n389#1,6:1259\n408#1:1265\n401#1,4:1266\n373#1,6:1270\n383#1,3:1277\n386#1,2:1281\n406#1,2:1283\n389#1,6:1285\n408#1:1291\n401#1,4:1292\n373#1,6:1296\n383#1,3:1303\n386#1,2:1307\n406#1,2:1309\n389#1,6:1311\n408#1:1317\n401#1,4:1318\n373#1,6:1322\n383#1,3:1329\n386#1,2:1333\n406#1,2:1335\n389#1,6:1337\n408#1:1343\n401#1,4:1344\n373#1,6:1348\n383#1,3:1355\n386#1,2:1359\n406#1,2:1361\n389#1,6:1363\n408#1:1369\n401#1,4:1370\n373#1,6:1374\n383#1,3:1381\n386#1,2:1385\n406#1,2:1387\n389#1,6:1389\n408#1:1395\n537#1,11:1412\n401#1,4:1423\n373#1,6:1427\n383#1,3:1434\n386#1,2:1438\n406#1:1440\n548#1,10:1441\n407#1:1451\n389#1,6:1452\n408#1:1458\n558#1,2:1459\n537#1,11:1461\n401#1,4:1472\n373#1,6:1476\n383#1,3:1483\n386#1,2:1487\n406#1:1489\n548#1,10:1490\n407#1:1500\n389#1,6:1501\n408#1:1507\n558#1,2:1508\n537#1,11:1510\n401#1,4:1521\n373#1,6:1525\n383#1,3:1532\n386#1,2:1536\n406#1:1538\n548#1,10:1539\n407#1:1549\n389#1,6:1550\n408#1:1556\n558#1,2:1557\n537#1,11:1559\n401#1,4:1570\n373#1,6:1574\n383#1,3:1581\n386#1,2:1585\n406#1:1587\n548#1,10:1588\n407#1:1598\n389#1,6:1599\n408#1:1605\n558#1,2:1606\n537#1,11:1608\n401#1,4:1619\n373#1,6:1623\n383#1,3:1630\n386#1,2:1634\n406#1:1636\n548#1,10:1637\n407#1:1647\n389#1,6:1648\n408#1:1654\n558#1,2:1655\n1826#2:1075\n1688#2:1076\n1826#2:1083\n1688#2:1087\n1826#2:1103\n1688#2:1107\n1826#2:1123\n1688#2:1127\n1826#2:1147\n1688#2:1151\n1826#2:1173\n1688#2:1177\n1826#2:1199\n1688#2:1203\n1826#2:1224\n1688#2:1228\n1826#2:1250\n1688#2:1254\n1826#2:1276\n1688#2:1280\n1826#2:1302\n1688#2:1306\n1826#2:1328\n1688#2:1332\n1826#2:1354\n1688#2:1358\n1826#2:1380\n1688#2:1384\n1605#2,3:1396\n1619#2:1399\n1615#2:1400\n1795#2,3:1401\n1809#2,3:1404\n1733#2:1407\n1721#2:1408\n1715#2:1409\n1728#2:1410\n1818#2:1411\n1826#2:1433\n1688#2:1437\n1826#2:1482\n1688#2:1486\n1826#2:1531\n1688#2:1535\n1826#2:1580\n1688#2:1584\n1826#2:1629\n1688#2:1633\n*S KotlinDebug\n*F\n+ 1 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n*L\n404#1:1077,6\n404#1:1084,3\n404#1:1088,9\n417#1:1097,6\n417#1:1104,3\n417#1:1108,9\n430#1:1117,6\n430#1:1124,3\n430#1:1128,9\n439#1:1137,4\n439#1:1141,6\n439#1:1148,3\n439#1:1152,2\n439#1:1154,2\n439#1:1156,6\n439#1:1162\n449#1:1163,4\n449#1:1167,6\n449#1:1174,3\n449#1:1178,2\n449#1:1180,2\n449#1:1182,6\n449#1:1188\n465#1:1189,4\n465#1:1193,6\n465#1:1200,3\n465#1:1204,2\n465#1:1206,2\n465#1:1208,6\n465#1:1214\n488#1:1215,3\n488#1:1218,6\n488#1:1225,3\n488#1:1229,2\n488#1:1231,2\n488#1:1233,6\n488#1:1239\n512#1:1240,4\n512#1:1244,6\n512#1:1251,3\n512#1:1255,2\n512#1:1257,2\n512#1:1259,6\n512#1:1265\n547#1:1266,4\n547#1:1270,6\n547#1:1277,3\n547#1:1281,2\n547#1:1283,2\n547#1:1285,6\n547#1:1291\n547#1:1292,4\n547#1:1296,6\n547#1:1303,3\n547#1:1307,2\n547#1:1309,2\n547#1:1311,6\n547#1:1317\n568#1:1318,4\n568#1:1322,6\n568#1:1329,3\n568#1:1333,2\n568#1:1335,2\n568#1:1337,6\n568#1:1343\n597#1:1344,4\n597#1:1348,6\n597#1:1355,3\n597#1:1359,2\n597#1:1361,2\n597#1:1363,6\n597#1:1369\n619#1:1370,4\n619#1:1374,6\n619#1:1381,3\n619#1:1385,2\n619#1:1387,2\n619#1:1389,6\n619#1:1395\n-1#1:1412,11\n-1#1:1423,4\n-1#1:1427,6\n-1#1:1434,3\n-1#1:1438,2\n-1#1:1440\n-1#1:1441,10\n-1#1:1451\n-1#1:1452,6\n-1#1:1458\n-1#1:1459,2\n-1#1:1461,11\n-1#1:1472,4\n-1#1:1476,6\n-1#1:1483,3\n-1#1:1487,2\n-1#1:1489\n-1#1:1490,10\n-1#1:1500\n-1#1:1501,6\n-1#1:1507\n-1#1:1508,2\n-1#1:1510,11\n-1#1:1521,4\n-1#1:1525,6\n-1#1:1532,3\n-1#1:1536,2\n-1#1:1538\n-1#1:1539,10\n-1#1:1549\n-1#1:1550,6\n-1#1:1556\n-1#1:1557,2\n-1#1:1559,11\n-1#1:1570,4\n-1#1:1574,6\n-1#1:1581,3\n-1#1:1585,2\n-1#1:1587\n-1#1:1588,10\n-1#1:1598\n-1#1:1599,6\n-1#1:1605\n-1#1:1606,2\n-1#1:1608,11\n-1#1:1619,4\n-1#1:1623,6\n-1#1:1630,3\n-1#1:1634,2\n-1#1:1636\n-1#1:1637,10\n-1#1:1647\n-1#1:1648,6\n-1#1:1654\n-1#1:1655,2\n378#1:1075\n385#1:1076\n404#1:1083\n404#1:1087\n417#1:1103\n417#1:1107\n430#1:1123\n430#1:1127\n439#1:1147\n439#1:1151\n449#1:1173\n449#1:1177\n465#1:1199\n465#1:1203\n488#1:1224\n488#1:1228\n512#1:1250\n512#1:1254\n547#1:1276\n547#1:1280\n547#1:1302\n547#1:1306\n568#1:1328\n568#1:1332\n597#1:1354\n597#1:1358\n619#1:1380\n619#1:1384\n638#1:1396,3\n639#1:1399\n642#1:1400\n646#1:1401,3\n647#1:1404,3\n648#1:1407\n649#1:1408\n649#1:1409\n653#1:1410\n656#1:1411\n-1#1:1433\n-1#1:1437\n-1#1:1482\n-1#1:1486\n-1#1:1531\n-1#1:1535\n-1#1:1580\n-1#1:1584\n-1#1:1629\n-1#1:1633\n*E\n"})
/* loaded from: classes.dex */
public abstract class ObjectIntMap<K> {

    @JvmField
    public int _capacity;

    @JvmField
    public int _size;

    @JvmField
    @NotNull
    public Object[] keys;

    @JvmField
    @NotNull
    public long[] metadata;

    @JvmField
    @NotNull
    public int[] values;

    public /* synthetic */ ObjectIntMap(kotlin.jvm.internal.f fVar) {
        this();
    }

    @PublishedApi
    public static /* synthetic */ void getKeys$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getMetadata$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getValues$annotations() {
    }

    public static /* synthetic */ void get_capacity$collection$annotations() {
    }

    public static /* synthetic */ void get_size$collection$annotations() {
    }

    public static /* synthetic */ String joinToString$default(ObjectIntMap objectIntMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
        }
        if ((i3 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i3 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i3 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i3 & 8) != 0) {
            i2 = -1;
        }
        if ((i3 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence5 = charSequence4;
        CharSequence charSequence6 = charSequence3;
        return objectIntMap.joinToString(charSequence, charSequence2, charSequence6, i2, charSequence5);
    }

    public final boolean all(@NotNull Function2<? super K, ? super Integer, Boolean> predicate) {
        j.e(predicate, "predicate");
        Object[] objArr = this.keys;
        int[] iArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        int i5 = (i2 << 3) + i4;
                        if (!predicate.invoke(objArr[i5], Integer.valueOf(iArr[i5])).booleanValue()) {
                            return false;
                        }
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return true;
                }
            }
            if (i2 == length) {
                return true;
            }
            i2++;
        }
    }

    public final boolean any() {
        return this._size != 0;
    }

    public final boolean contains(K key) {
        return findKeyIndex(key) >= 0;
    }

    public final boolean containsKey(K key) {
        return findKeyIndex(key) >= 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean containsValue(int r15) {
        /*
            r14 = this;
            int[] r0 = r14.values
            long[] r1 = r14.metadata
            int r2 = r1.length
            int r2 = r2 + (-2)
            r3 = 0
            if (r2 < 0) goto L44
            r4 = r3
        Lb:
            r5 = r1[r4]
            long r7 = ~r5
            r9 = 7
            long r7 = r7 << r9
            long r7 = r7 & r5
            r9 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r7 = r7 & r9
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 == 0) goto L3f
            int r7 = r4 - r2
            int r7 = ~r7
            int r7 = r7 >>> 31
            r8 = 8
            int r7 = 8 - r7
            r9 = r3
        L25:
            if (r9 >= r7) goto L3d
            r10 = 255(0xff, double:1.26E-321)
            long r10 = r10 & r5
            r12 = 128(0x80, double:6.3E-322)
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 >= 0) goto L39
            int r10 = r4 << 3
            int r10 = r10 + r9
            r10 = r0[r10]
            if (r15 != r10) goto L39
            r15 = 1
            return r15
        L39:
            long r5 = r5 >> r8
            int r9 = r9 + 1
            goto L25
        L3d:
            if (r7 != r8) goto L44
        L3f:
            if (r4 == r2) goto L44
            int r4 = r4 + 1
            goto Lb
        L44:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ObjectIntMap.containsValue(int):boolean");
    }

    public final int count() {
        return get_size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r19) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = 1
            if (r1 != r0) goto L8
            return r2
        L8:
            boolean r3 = r1 instanceof androidx.collection.ObjectIntMap
            r4 = 0
            if (r3 != 0) goto Le
            return r4
        Le:
            androidx.collection.ObjectIntMap r1 = (androidx.collection.ObjectIntMap) r1
            int r3 = r1.get_size()
            int r5 = r0.get_size()
            if (r3 == r5) goto L1b
            return r4
        L1b:
            java.lang.Object[] r3 = r0.keys
            int[] r5 = r0.values
            long[] r6 = r0.metadata
            int r7 = r6.length
            int r7 = r7 + (-2)
            if (r7 < 0) goto L65
            r8 = r4
        L27:
            r9 = r6[r8]
            long r11 = ~r9
            r13 = 7
            long r11 = r11 << r13
            long r11 = r11 & r9
            r13 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r11 = r11 & r13
            int r11 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r11 == 0) goto L60
            int r11 = r8 - r7
            int r11 = ~r11
            int r11 = r11 >>> 31
            r12 = 8
            int r11 = 8 - r11
            r13 = r4
        L41:
            if (r13 >= r11) goto L5e
            r14 = 255(0xff, double:1.26E-321)
            long r14 = r14 & r9
            r16 = 128(0x80, double:6.3E-322)
            int r14 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r14 >= 0) goto L5a
            int r14 = r8 << 3
            int r14 = r14 + r13
            r15 = r3[r14]
            r14 = r5[r14]
            int r15 = r1.get(r15)
            if (r14 == r15) goto L5a
            return r4
        L5a:
            long r9 = r9 >> r12
            int r13 = r13 + 1
            goto L41
        L5e:
            if (r11 != r12) goto L65
        L60:
            if (r8 == r7) goto L65
            int r8 = r8 + 1
            goto L27
        L65:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ObjectIntMap.equals(java.lang.Object):boolean");
    }

    @PublishedApi
    public final int findKeyIndex(K key) {
        int i2 = 0;
        int iHashCode = (key != null ? key.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
        int i3 = iHashCode ^ (iHashCode << 16);
        int i4 = i3 & 127;
        int i5 = this._capacity;
        int i6 = i3 >>> 7;
        while (true) {
            int i7 = i6 & i5;
            long[] jArr = this.metadata;
            int i8 = i7 >> 3;
            int i9 = (i7 & 7) << 3;
            long j2 = ((jArr[i8 + 1] << (64 - i9)) & ((-i9) >> 63)) | (jArr[i8] >>> i9);
            long j3 = (i4 * ScatterMapKt.BitmaskLsb) ^ j2;
            for (long j4 = (~j3) & (j3 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j4 != 0; j4 &= j4 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j4) >> 3) + i7) & i5;
                if (j.a(this.keys[iNumberOfTrailingZeros], key)) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((j2 & ((~j2) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i2 += 8;
            i6 = i7 + i2;
        }
    }

    public final void forEach(@NotNull Function2<? super K, ? super Integer, kotlin.j> block) {
        j.e(block, "block");
        Object[] objArr = this.keys;
        int[] iArr = this.values;
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
                        block.invoke(objArr[i5], Integer.valueOf(iArr[i5]));
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

    @PublishedApi
    public final void forEachIndexed(@NotNull Function1<? super Integer, kotlin.j> block) {
        j.e(block, "block");
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
                        block.invoke(Integer.valueOf((i2 << 3) + i4));
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

    public final void forEachKey(@NotNull Function1<? super K, kotlin.j> block) {
        j.e(block, "block");
        Object[] objArr = this.keys;
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
                        block.invoke(objArr[(i2 << 3) + i4]);
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

    public final void forEachValue(@NotNull Function1<? super Integer, kotlin.j> block) {
        j.e(block, "block");
        int[] iArr = this.values;
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
                        block.invoke(Integer.valueOf(iArr[(i2 << 3) + i4]));
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

    public final int get(K key) {
        int iFindKeyIndex = findKeyIndex(key);
        if (iFindKeyIndex >= 0) {
            return this.values[iFindKeyIndex];
        }
        throw new NoSuchElementException("There is no key " + key + " in the map");
    }

    /* renamed from: getCapacity, reason: from getter */
    public final int get_capacity() {
        return this._capacity;
    }

    public final int getOrDefault(K key, int defaultValue) {
        int iFindKeyIndex = findKeyIndex(key);
        return iFindKeyIndex >= 0 ? this.values[iFindKeyIndex] : defaultValue;
    }

    public final int getOrElse(K key, @NotNull Function0<Integer> defaultValue) {
        j.e(defaultValue, "defaultValue");
        int iFindKeyIndex = findKeyIndex(key);
        return iFindKeyIndex >= 0 ? this.values[iFindKeyIndex] : defaultValue.invoke().intValue();
    }

    /* renamed from: getSize, reason: from getter */
    public final int get_size() {
        return this._size;
    }

    public int hashCode() {
        Object[] objArr = this.keys;
        int[] iArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return 0;
        }
        int i2 = 0;
        int iHashCode = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        int i5 = (i2 << 3) + i4;
                        Object obj = objArr[i5];
                        iHashCode += Integer.hashCode(iArr[i5]) ^ (obj != null ? obj.hashCode() : 0);
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return iHashCode;
                }
            }
            if (i2 == length) {
                return iHashCode;
            }
            i2++;
        }
    }

    public final boolean isEmpty() {
        return this._size == 0;
    }

    public final boolean isNotEmpty() {
        return this._size != 0;
    }

    @JvmOverloads
    @NotNull
    public final String joinToString() {
        return joinToString$default(this, null, null, null, 0, null, 31, null);
    }

    public final boolean none() {
        return this._size == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0074 A[PHI: r8
      0x0074: PHI (r8v2 int) = (r8v1 int), (r8v3 int) binds: [B:10:0x0031, B:22:0x0072] A[DONT_GENERATE, DONT_INLINE]] */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r18 = this;
            r0 = r18
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto Lb
            java.lang.String r1 = "{}"
            return r1
        Lb:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r2 = 123(0x7b, float:1.72E-43)
            r1.append(r2)
            java.lang.Object[] r2 = r0.keys
            int[] r3 = r0.values
            long[] r4 = r0.metadata
            int r5 = r4.length
            int r5 = r5 + (-2)
            if (r5 < 0) goto L79
            r6 = 0
            r7 = r6
            r8 = r7
        L23:
            r9 = r4[r7]
            long r11 = ~r9
            r13 = 7
            long r11 = r11 << r13
            long r11 = r11 & r9
            r13 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r11 = r11 & r13
            int r11 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r11 == 0) goto L74
            int r11 = r7 - r5
            int r11 = ~r11
            int r11 = r11 >>> 31
            r12 = 8
            int r11 = 8 - r11
            r13 = r6
        L3d:
            if (r13 >= r11) goto L72
            r14 = 255(0xff, double:1.26E-321)
            long r14 = r14 & r9
            r16 = 128(0x80, double:6.3E-322)
            int r14 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r14 >= 0) goto L6e
            int r14 = r7 << 3
            int r14 = r14 + r13
            r15 = r2[r14]
            r14 = r3[r14]
            if (r15 != r0) goto L53
            java.lang.String r15 = "(this)"
        L53:
            r1.append(r15)
            java.lang.String r15 = "="
            r1.append(r15)
            r1.append(r14)
            int r8 = r8 + 1
            int r14 = r0._size
            if (r8 >= r14) goto L6e
            r14 = 44
            r1.append(r14)
            r14 = 32
            r1.append(r14)
        L6e:
            long r9 = r9 >> r12
            int r13 = r13 + 1
            goto L3d
        L72:
            if (r11 != r12) goto L79
        L74:
            if (r7 == r5) goto L79
            int r7 = r7 + 1
            goto L23
        L79:
            r2 = 125(0x7d, float:1.75E-43)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "s.append('}').toString()"
            kotlin.jvm.internal.j.d(r1, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ObjectIntMap.toString():java.lang.String");
    }

    private ObjectIntMap() {
        this.metadata = ScatterMapKt.EmptyGroup;
        this.keys = ContainerHelpersKt.EMPTY_OBJECTS;
        this.values = IntSetKt.getEmptyIntArray();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean any(@org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super K, ? super java.lang.Integer, java.lang.Boolean> r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            java.lang.String r2 = "predicate"
            kotlin.jvm.internal.j.e(r1, r2)
            java.lang.Object[] r2 = r0.keys
            int[] r3 = r0.values
            long[] r4 = r0.metadata
            int r5 = r4.length
            int r5 = r5 + (-2)
            r6 = 0
            if (r5 < 0) goto L5f
            r7 = r6
        L16:
            r8 = r4[r7]
            long r10 = ~r8
            r12 = 7
            long r10 = r10 << r12
            long r10 = r10 & r8
            r12 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r10 = r10 & r12
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 == 0) goto L5a
            int r10 = r7 - r5
            int r10 = ~r10
            int r10 = r10 >>> 31
            r11 = 8
            int r10 = 8 - r10
            r12 = r6
        L30:
            if (r12 >= r10) goto L58
            r13 = 255(0xff, double:1.26E-321)
            long r13 = r13 & r8
            r15 = 128(0x80, double:6.3E-322)
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 >= 0) goto L54
            int r13 = r7 << 3
            int r13 = r13 + r12
            r14 = r2[r13]
            r13 = r3[r13]
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)
            java.lang.Object r13 = r1.invoke(r14, r13)
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            if (r13 == 0) goto L54
            r1 = 1
            return r1
        L54:
            long r8 = r8 >> r11
            int r12 = r12 + 1
            goto L30
        L58:
            if (r10 != r11) goto L5f
        L5a:
            if (r7 == r5) goto L5f
            int r7 = r7 + 1
            goto L16
        L5f:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ObjectIntMap.any(kotlin.jvm.functions.Function2):boolean");
    }

    public final int count(@NotNull Function2<? super K, ? super Integer, Boolean> predicate) {
        j.e(predicate, "predicate");
        Object[] objArr = this.keys;
        int[] iArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return 0;
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i4 = 8 - ((~(i2 - length)) >>> 31);
                for (int i5 = 0; i5 < i4; i5++) {
                    if ((255 & j2) < 128) {
                        int i6 = (i2 << 3) + i5;
                        if (predicate.invoke(objArr[i6], Integer.valueOf(iArr[i6])).booleanValue()) {
                            i3++;
                        }
                    }
                    j2 >>= 8;
                }
                if (i4 != 8) {
                    return i3;
                }
            }
            if (i2 == length) {
                return i3;
            }
            i2++;
        }
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator) {
        j.e(separator, "separator");
        return joinToString$default(this, separator, null, null, 0, null, 30, null);
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        return joinToString$default(this, separator, prefix, null, 0, null, 28, null);
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        j.e(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, 0, null, 24, null);
    }

    public static /* synthetic */ String joinToString$default(ObjectIntMap objectIntMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, Function2 transform, int i3, Object obj) {
        long[] jArr;
        long[] jArr2;
        int i4;
        if (obj == null) {
            CharSequence separator = (i3 & 1) != 0 ? ", " : charSequence;
            CharSequence prefix = (i3 & 2) != 0 ? "" : charSequence2;
            CharSequence postfix = (i3 & 4) == 0 ? charSequence3 : "";
            int i5 = (i3 & 8) != 0 ? -1 : i2;
            CharSequence truncated = (i3 & 16) != 0 ? "..." : charSequence4;
            j.e(separator, "separator");
            j.e(prefix, "prefix");
            j.e(postfix, "postfix");
            j.e(truncated, "truncated");
            j.e(transform, "transform");
            StringBuilder sb = new StringBuilder();
            sb.append(prefix);
            Object[] objArr = objectIntMap.keys;
            int[] iArr = objectIntMap.values;
            long[] jArr3 = objectIntMap.metadata;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i6 = 0;
                int i7 = 0;
                loop0: while (true) {
                    long j2 = jArr3[i6];
                    int i8 = i6;
                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i9 = 8;
                        int i10 = 8 - ((~(i8 - length)) >>> 31);
                        int i11 = 0;
                        while (i11 < i10) {
                            if ((j2 & 255) < 128) {
                                int i12 = (i8 << 3) + i11;
                                i4 = i9;
                                Object obj2 = objArr[i12];
                                int i13 = iArr[i12];
                                if (i7 == i5) {
                                    sb.append(truncated);
                                    break loop0;
                                }
                                if (i7 != 0) {
                                    sb.append(separator);
                                }
                                jArr2 = jArr3;
                                sb.append((CharSequence) transform.invoke(obj2, Integer.valueOf(i13)));
                                i7++;
                            } else {
                                jArr2 = jArr3;
                                i4 = i9;
                            }
                            j2 >>= i4;
                            i11++;
                            i9 = i4;
                            jArr3 = jArr2;
                        }
                        jArr = jArr3;
                        if (i10 != i9) {
                            break;
                        }
                    } else {
                        jArr = jArr3;
                    }
                    if (i8 == length) {
                        break;
                    }
                    i6 = i8 + 1;
                    jArr3 = jArr;
                }
                sb.append(postfix);
            } else {
                sb.append(postfix);
            }
            String string = sb.toString();
            j.d(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i2) {
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        j.e(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, i2, null, 16, null);
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int limit, @NotNull CharSequence truncated) {
        Object[] objArr;
        Object[] objArr2;
        int i2;
        j.e(separator, "separator");
        j.e(prefix, "prefix");
        j.e(postfix, "postfix");
        j.e(truncated, "truncated");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        Object[] objArr3 = this.keys;
        int[] iArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i3 = 0;
            int i4 = 0;
            loop0: while (true) {
                long j2 = jArr[i3];
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i5 = 8;
                    int i6 = 8 - ((~(i3 - length)) >>> 31);
                    int i7 = 0;
                    while (i7 < i6) {
                        if ((j2 & 255) < 128) {
                            int i8 = (i3 << 3) + i7;
                            i2 = i5;
                            Object obj = objArr3[i8];
                            int i9 = iArr[i8];
                            objArr2 = objArr3;
                            if (i4 == limit) {
                                sb.append(truncated);
                                break loop0;
                            }
                            if (i4 != 0) {
                                sb.append(separator);
                            }
                            sb.append(obj);
                            sb.append('=');
                            sb.append(i9);
                            i4++;
                        } else {
                            objArr2 = objArr3;
                            i2 = i5;
                        }
                        j2 >>= i2;
                        i7++;
                        objArr3 = objArr2;
                        i5 = i2;
                    }
                    objArr = objArr3;
                    if (i6 != i5) {
                        break;
                    }
                } else {
                    objArr = objArr3;
                }
                if (i3 == length) {
                    break;
                }
                i3++;
                objArr3 = objArr;
            }
            sb.append(postfix);
        } else {
            sb.append(postfix);
        }
        String string = sb.toString();
        j.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @JvmOverloads
    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int limit, @NotNull CharSequence truncated, @NotNull Function2<? super K, ? super Integer, ? extends CharSequence> transform) {
        Object[] objArr;
        Object[] objArr2;
        CharSequence separator2 = separator;
        j.e(separator2, "separator");
        j.e(prefix, "prefix");
        j.e(postfix, "postfix");
        j.e(truncated, "truncated");
        j.e(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        Object[] objArr3 = this.keys;
        int[] iArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i2 = 0;
            int i3 = 0;
            loop0: while (true) {
                long j2 = jArr[i2];
                int i4 = i2;
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i5 = 8 - ((~(i4 - length)) >>> 31);
                    int i6 = 0;
                    while (i6 < i5) {
                        if ((j2 & 255) < 128) {
                            int i7 = (i4 << 3) + i6;
                            Object obj = objArr3[i7];
                            int i8 = iArr[i7];
                            objArr2 = objArr3;
                            if (i3 == limit) {
                                sb.append(truncated);
                                break loop0;
                            }
                            if (i3 != 0) {
                                sb.append(separator2);
                            }
                            sb.append(transform.invoke(obj, Integer.valueOf(i8)));
                            i3++;
                        } else {
                            objArr2 = objArr3;
                        }
                        j2 >>= 8;
                        i6++;
                        separator2 = separator;
                        objArr3 = objArr2;
                    }
                    objArr = objArr3;
                    if (i5 != 8) {
                        break;
                    }
                } else {
                    objArr = objArr3;
                }
                if (i4 == length) {
                    break;
                }
                i2 = i4 + 1;
                separator2 = separator;
                objArr3 = objArr;
            }
            sb.append(postfix);
        } else {
            sb.append(postfix);
        }
        String string = sb.toString();
        j.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0093 A[PHI: r11
      0x0093: PHI (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:6:0x0044, B:20:0x0091] A[DONT_GENERATE, DONT_INLINE]] */
    @kotlin.jvm.JvmOverloads
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String joinToString(@org.jetbrains.annotations.NotNull java.lang.CharSequence r21, @org.jetbrains.annotations.NotNull java.lang.CharSequence r22, @org.jetbrains.annotations.NotNull java.lang.CharSequence r23, int r24, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super K, ? super java.lang.Integer, ? extends java.lang.CharSequence> r25) {
        /*
            r20 = this;
            r0 = r20
            r1 = r21
            r2 = r22
            r3 = r23
            r4 = r25
            java.lang.String r5 = "separator"
            kotlin.jvm.internal.j.e(r1, r5)
            java.lang.String r5 = "prefix"
            kotlin.jvm.internal.j.e(r2, r5)
            java.lang.String r5 = "postfix"
            kotlin.jvm.internal.j.e(r3, r5)
            java.lang.String r5 = "transform"
            kotlin.jvm.internal.j.e(r4, r5)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r2)
            java.lang.Object[] r2 = r0.keys
            int[] r6 = r0.values
            long[] r7 = r0.metadata
            int r8 = r7.length
            int r8 = r8 + (-2)
            if (r8 < 0) goto L9a
            r10 = 0
            r11 = 0
        L33:
            r12 = r7[r10]
            long r14 = ~r12
            r16 = 7
            long r14 = r14 << r16
            long r14 = r14 & r12
            r16 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r14 = r14 & r16
            int r14 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r14 == 0) goto L93
            int r14 = r10 - r8
            int r14 = ~r14
            int r14 = r14 >>> 31
            r15 = 8
            int r14 = 8 - r14
            r9 = 0
        L50:
            if (r9 >= r14) goto L90
            r16 = 255(0xff, double:1.26E-321)
            long r16 = r12 & r16
            r18 = 128(0x80, double:6.3E-322)
            int r16 = (r16 > r18 ? 1 : (r16 == r18 ? 0 : -1))
            if (r16 >= 0) goto L85
            int r16 = r10 << 3
            int r16 = r16 + r9
            r17 = r15
            r15 = r2[r16]
            r16 = r6[r16]
            r0 = r24
            if (r11 != r0) goto L70
            java.lang.String r0 = "..."
            r5.append(r0)
            goto L9d
        L70:
            if (r11 == 0) goto L75
            r5.append(r1)
        L75:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r16)
            java.lang.Object r0 = r4.invoke(r15, r0)
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            r5.append(r0)
            int r11 = r11 + 1
            goto L87
        L85:
            r17 = r15
        L87:
            long r12 = r12 >> r17
            int r9 = r9 + 1
            r0 = r20
            r15 = r17
            goto L50
        L90:
            r0 = r15
            if (r14 != r0) goto L9a
        L93:
            if (r10 == r8) goto L9a
            int r10 = r10 + 1
            r0 = r20
            goto L33
        L9a:
            r5.append(r3)
        L9d:
            java.lang.String r0 = r5.toString()
            java.lang.String r1 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.j.d(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ObjectIntMap.joinToString(java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, kotlin.jvm.functions.Function2):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0092 A[PHI: r11
      0x0092: PHI (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:6:0x0044, B:20:0x0090] A[DONT_GENERATE, DONT_INLINE]] */
    @kotlin.jvm.JvmOverloads
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String joinToString(@org.jetbrains.annotations.NotNull java.lang.CharSequence r21, @org.jetbrains.annotations.NotNull java.lang.CharSequence r22, @org.jetbrains.annotations.NotNull java.lang.CharSequence r23, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super K, ? super java.lang.Integer, ? extends java.lang.CharSequence> r24) {
        /*
            r20 = this;
            r0 = r20
            r1 = r21
            r2 = r22
            r3 = r23
            r4 = r24
            java.lang.String r5 = "separator"
            kotlin.jvm.internal.j.e(r1, r5)
            java.lang.String r5 = "prefix"
            kotlin.jvm.internal.j.e(r2, r5)
            java.lang.String r5 = "postfix"
            kotlin.jvm.internal.j.e(r3, r5)
            java.lang.String r5 = "transform"
            kotlin.jvm.internal.j.e(r4, r5)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r2)
            java.lang.Object[] r2 = r0.keys
            int[] r6 = r0.values
            long[] r7 = r0.metadata
            int r8 = r7.length
            int r8 = r8 + (-2)
            if (r8 < 0) goto L99
            r10 = 0
            r11 = 0
        L33:
            r12 = r7[r10]
            long r14 = ~r12
            r16 = 7
            long r14 = r14 << r16
            long r14 = r14 & r12
            r16 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r14 = r14 & r16
            int r14 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r14 == 0) goto L92
            int r14 = r10 - r8
            int r14 = ~r14
            int r14 = r14 >>> 31
            r15 = 8
            int r14 = 8 - r14
            r9 = 0
        L50:
            if (r9 >= r14) goto L8f
            r16 = 255(0xff, double:1.26E-321)
            long r16 = r12 & r16
            r18 = 128(0x80, double:6.3E-322)
            int r16 = (r16 > r18 ? 1 : (r16 == r18 ? 0 : -1))
            if (r16 >= 0) goto L84
            int r16 = r10 << 3
            int r16 = r16 + r9
            r17 = r15
            r15 = r2[r16]
            r16 = r6[r16]
            r0 = -1
            if (r11 != r0) goto L6f
            java.lang.String r0 = "..."
            r5.append(r0)
            goto L9c
        L6f:
            if (r11 == 0) goto L74
            r5.append(r1)
        L74:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r16)
            java.lang.Object r0 = r4.invoke(r15, r0)
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            r5.append(r0)
            int r11 = r11 + 1
            goto L86
        L84:
            r17 = r15
        L86:
            long r12 = r12 >> r17
            int r9 = r9 + 1
            r0 = r20
            r15 = r17
            goto L50
        L8f:
            r0 = r15
            if (r14 != r0) goto L99
        L92:
            if (r10 == r8) goto L99
            int r10 = r10 + 1
            r0 = r20
            goto L33
        L99:
            r5.append(r3)
        L9c:
            java.lang.String r0 = r5.toString()
            java.lang.String r1 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.j.d(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ObjectIntMap.joinToString(java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, kotlin.jvm.functions.Function2):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0086 A[PHI: r10
      0x0086: PHI (r10v2 int) = (r10v1 int), (r10v3 int) binds: [B:6:0x003a, B:20:0x0084] A[DONT_GENERATE, DONT_INLINE]] */
    @kotlin.jvm.JvmOverloads
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String joinToString(@org.jetbrains.annotations.NotNull java.lang.CharSequence r21, @org.jetbrains.annotations.NotNull java.lang.CharSequence r22, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super K, ? super java.lang.Integer, ? extends java.lang.CharSequence> r23) {
        /*
            r20 = this;
            r0 = r20
            r1 = r21
            r2 = r22
            r3 = r23
            java.lang.String r4 = "separator"
            kotlin.jvm.internal.j.e(r1, r4)
            java.lang.String r4 = "prefix"
            kotlin.jvm.internal.j.e(r2, r4)
            java.lang.String r4 = "transform"
            kotlin.jvm.internal.j.e(r3, r4)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r2)
            java.lang.Object[] r2 = r0.keys
            int[] r5 = r0.values
            long[] r6 = r0.metadata
            int r7 = r6.length
            int r7 = r7 + (-2)
            if (r7 < 0) goto L8b
            r9 = 0
            r10 = 0
        L2c:
            r11 = r6[r9]
            long r13 = ~r11
            r15 = 7
            long r13 = r13 << r15
            long r13 = r13 & r11
            r15 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r13 = r13 & r15
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 == 0) goto L86
            int r13 = r9 - r7
            int r13 = ~r13
            int r13 = r13 >>> 31
            r14 = 8
            int r13 = 8 - r13
            r15 = 0
        L46:
            if (r15 >= r13) goto L83
            r16 = 255(0xff, double:1.26E-321)
            long r16 = r11 & r16
            r18 = 128(0x80, double:6.3E-322)
            int r16 = (r16 > r18 ? 1 : (r16 == r18 ? 0 : -1))
            if (r16 >= 0) goto L7a
            int r16 = r9 << 3
            int r16 = r16 + r15
            r8 = r2[r16]
            r16 = r5[r16]
            r17 = r14
            r14 = -1
            if (r10 != r14) goto L65
            java.lang.String r1 = "..."
            r4.append(r1)
            goto L90
        L65:
            if (r10 == 0) goto L6a
            r4.append(r1)
        L6a:
            java.lang.Integer r14 = java.lang.Integer.valueOf(r16)
            java.lang.Object r8 = r3.invoke(r8, r14)
            java.lang.CharSequence r8 = (java.lang.CharSequence) r8
            r4.append(r8)
            int r10 = r10 + 1
            goto L7c
        L7a:
            r17 = r14
        L7c:
            long r11 = r11 >> r17
            int r15 = r15 + 1
            r14 = r17
            goto L46
        L83:
            r8 = r14
            if (r13 != r8) goto L8b
        L86:
            if (r9 == r7) goto L8b
            int r9 = r9 + 1
            goto L2c
        L8b:
            java.lang.String r1 = ""
            r4.append(r1)
        L90:
            java.lang.String r1 = r4.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.j.d(r1, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ObjectIntMap.joinToString(java.lang.CharSequence, java.lang.CharSequence, kotlin.jvm.functions.Function2):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0086 A[PHI: r11
      0x0086: PHI (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:6:0x0038, B:20:0x0084] A[DONT_GENERATE, DONT_INLINE]] */
    @kotlin.jvm.JvmOverloads
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String joinToString(@org.jetbrains.annotations.NotNull java.lang.CharSequence r22, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super K, ? super java.lang.Integer, ? extends java.lang.CharSequence> r23) {
        /*
            r21 = this;
            r0 = r21
            r1 = r22
            r2 = r23
            java.lang.String r3 = "separator"
            kotlin.jvm.internal.j.e(r1, r3)
            java.lang.String r3 = "transform"
            kotlin.jvm.internal.j.e(r2, r3)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = ""
            r3.append(r4)
            java.lang.Object[] r5 = r0.keys
            int[] r6 = r0.values
            long[] r7 = r0.metadata
            int r8 = r7.length
            int r8 = r8 + (-2)
            if (r8 < 0) goto L8d
            r10 = 0
            r11 = 0
        L27:
            r12 = r7[r10]
            long r14 = ~r12
            r16 = 7
            long r14 = r14 << r16
            long r14 = r14 & r12
            r16 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r14 = r14 & r16
            int r14 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r14 == 0) goto L86
            int r14 = r10 - r8
            int r14 = ~r14
            int r14 = r14 >>> 31
            r15 = 8
            int r14 = 8 - r14
            r9 = 0
        L44:
            if (r9 >= r14) goto L83
            r17 = 255(0xff, double:1.26E-321)
            long r17 = r12 & r17
            r19 = 128(0x80, double:6.3E-322)
            int r17 = (r17 > r19 ? 1 : (r17 == r19 ? 0 : -1))
            if (r17 >= 0) goto L78
            int r17 = r10 << 3
            int r17 = r17 + r9
            r18 = r15
            r15 = r5[r17]
            r17 = r6[r17]
            r0 = -1
            if (r11 != r0) goto L63
            java.lang.String r0 = "..."
            r3.append(r0)
            goto L90
        L63:
            if (r11 == 0) goto L68
            r3.append(r1)
        L68:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r17)
            java.lang.Object r0 = r2.invoke(r15, r0)
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            r3.append(r0)
            int r11 = r11 + 1
            goto L7a
        L78:
            r18 = r15
        L7a:
            long r12 = r12 >> r18
            int r9 = r9 + 1
            r0 = r21
            r15 = r18
            goto L44
        L83:
            r0 = r15
            if (r14 != r0) goto L8d
        L86:
            if (r10 == r8) goto L8d
            int r10 = r10 + 1
            r0 = r21
            goto L27
        L8d:
            r3.append(r4)
        L90:
            java.lang.String r0 = r3.toString()
            java.lang.String r1 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.j.d(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ObjectIntMap.joinToString(java.lang.CharSequence, kotlin.jvm.functions.Function2):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007c A[PHI: r10
      0x007c: PHI (r10v2 int) = (r10v1 int), (r10v3 int) binds: [B:6:0x002e, B:20:0x007a] A[DONT_GENERATE, DONT_INLINE]] */
    @kotlin.jvm.JvmOverloads
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String joinToString(@org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super K, ? super java.lang.Integer, ? extends java.lang.CharSequence> r21) {
        /*
            r20 = this;
            r0 = r20
            r1 = r21
            java.lang.String r2 = "transform"
            kotlin.jvm.internal.j.e(r1, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = ""
            r2.append(r3)
            java.lang.Object[] r4 = r0.keys
            int[] r5 = r0.values
            long[] r6 = r0.metadata
            int r7 = r6.length
            int r7 = r7 + (-2)
            if (r7 < 0) goto L81
            r9 = 0
            r10 = 0
        L20:
            r11 = r6[r9]
            long r13 = ~r11
            r15 = 7
            long r13 = r13 << r15
            long r13 = r13 & r11
            r15 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r13 = r13 & r15
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 == 0) goto L7c
            int r13 = r9 - r7
            int r13 = ~r13
            int r13 = r13 >>> 31
            r14 = 8
            int r13 = 8 - r13
            r15 = 0
        L3a:
            if (r15 >= r13) goto L79
            r16 = 255(0xff, double:1.26E-321)
            long r16 = r11 & r16
            r18 = 128(0x80, double:6.3E-322)
            int r16 = (r16 > r18 ? 1 : (r16 == r18 ? 0 : -1))
            if (r16 >= 0) goto L70
            int r16 = r9 << 3
            int r16 = r16 + r15
            r8 = r4[r16]
            r16 = r5[r16]
            r18 = r14
            r14 = -1
            if (r10 != r14) goto L59
            java.lang.String r1 = "..."
            r2.append(r1)
            goto L84
        L59:
            if (r10 == 0) goto L60
            java.lang.String r14 = ", "
            r2.append(r14)
        L60:
            java.lang.Integer r14 = java.lang.Integer.valueOf(r16)
            java.lang.Object r8 = r1.invoke(r8, r14)
            java.lang.CharSequence r8 = (java.lang.CharSequence) r8
            r2.append(r8)
            int r10 = r10 + 1
            goto L72
        L70:
            r18 = r14
        L72:
            long r11 = r11 >> r18
            int r15 = r15 + 1
            r14 = r18
            goto L3a
        L79:
            r8 = r14
            if (r13 != r8) goto L81
        L7c:
            if (r9 == r7) goto L81
            int r9 = r9 + 1
            goto L20
        L81:
            r2.append(r3)
        L84:
            java.lang.String r1 = r2.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.j.d(r1, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ObjectIntMap.joinToString(kotlin.jvm.functions.Function2):java.lang.String");
    }
}
