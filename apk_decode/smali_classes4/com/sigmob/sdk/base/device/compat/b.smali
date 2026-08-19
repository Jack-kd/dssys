.class public final Lcom/sigmob/sdk/base/device/compat/b;
.super Ljava/lang/Object;


# static fields
.field private static final A:[Ljava/lang/String;

.field private static final B:[Ljava/lang/String;

.field private static final C:[Ljava/lang/String;

.field private static final D:[Ljava/lang/String;

.field private static final E:Ljava/lang/String; = "ro.vendor.asus.product.mkt_name"

.field private static final F:Ljava/lang/String; = "ro.vendor.asus.product.mkt_name"

.field private static final G:[Ljava/lang/String;

.field private static final H:[Ljava/lang/String;

.field private static final I:Ljava/lang/String; = "ro.product.letv_name"

.field private static final J:Ljava/lang/String; = "ro.product.letv_name"

.field private static final K:Ljava/lang/String; = "ro.qiku.product.devicename"

.field private static final L:Ljava/lang/String; = "ro.qiku.product.devicename"

.field private static final M:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static a:Ljava/lang/String; = ""

.field private static b:Z = false

.field private static final c:Ljava/lang/String; = "net.hostname"

.field private static final d:Ljava/lang/String; = "ro.product.model"

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;

.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static final p:Ljava/lang/String; = "ro.config.marketing_name"

.field private static final q:Ljava/lang/String; = "ro.config.marketing_name"

.field private static final r:Ljava/lang/String; = "ro.config.marketing_name"

.field private static final s:Ljava/lang/String; = "ro.config.marketing_name"

.field private static final t:Ljava/lang/String; = "ro.config.marketing_name"

.field private static final u:Ljava/lang/String; = "ro.vendor.product.ztename"

.field private static final v:Ljava/lang/String; = "ro.vendor.product.ztename"

.field private static final w:Ljava/lang/String; = "ro.vendor.product.ztename"

.field private static final x:Ljava/lang/String; = "ro.product.model"

.field private static final y:[Ljava/lang/String;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "ro.product.odm.marketname"

    const-string v1, "ro.product.vendor.marketname"

    const-string v2, "ro.product.marketname"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->e:[Ljava/lang/String;

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->f:[Ljava/lang/String;

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->g:[Ljava/lang/String;

    const-string v0, "ro.vendor.oplus.market.name"

    const-string v1, "ro.oppo.market.name"

    const-string v2, "ro.vendor.oplus.market.enname"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->h:[Ljava/lang/String;

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->i:[Ljava/lang/String;

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->j:[Ljava/lang/String;

    const-string v1, "ro.display.series"

    const-string v2, "ro.common.soft"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sigmob/sdk/base/device/compat/b;->k:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    const/4 v4, 0x1

    aget-object v5, v0, v4

    const/4 v6, 0x2

    aget-object v0, v0, v6

    aget-object v6, v1, v2

    aget-object v1, v1, v4

    filled-new-array {v3, v5, v0, v6, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->l:[Ljava/lang/String;

    const-string v0, "ro.vivo.internet.name"

    const-string v1, "ro.vivo.market.name"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->m:[Ljava/lang/String;

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->n:[Ljava/lang/String;

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->o:[Ljava/lang/String;

    const-string v0, "persist.sys.exif.model"

    const-string v1, "ro.vendor.product.ztename"

    const-string v3, "persist.sys.devicename"

    filled-new-array {v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->y:[Ljava/lang/String;

    aget-object v1, v0, v2

    aget-object v2, v0, v4

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sigmob/sdk/base/device/compat/b;->z:[Ljava/lang/String;

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->A:[Ljava/lang/String;

    const-string v0, "ro.product.display"

    const-string v1, "ro.product.en.display"

    const-string v2, "ro.zuk.product.market"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->B:[Ljava/lang/String;

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->C:[Ljava/lang/String;

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->D:[Ljava/lang/String;

    const-string v0, "net.devicename"

    const-string v1, "ro.product.codename"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->G:[Ljava/lang/String;

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->H:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/device/compat/b;->M:Ljava/util/Map;

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Redmi"

    goto :goto_0

    :cond_0
    const-string v1, "Xiaomi"

    :goto_0
    const-string v2, "Mi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u5c0f\u7c73"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u534e\u4e3a"

    const-string v2, "HUAWEI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u8363\u8000\u5e73\u677f"

    const-string v2, "HONOR Pad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u8363\u8000"

    const-string v2, "HONOR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u4e00\u52a0"

    const-string v2, "OnePlus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u771f\u6211"

    const-string v2, "realme"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "meizu"

    const-string v2, "MEIZU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u9b45\u65cf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u62ef\u6551\u8005\u7535\u7ade\u624b\u673a"

    const-string v2, "Lenovo Legion Phone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u62ef\u6551\u8005\u5e73\u677f"

    const-string v2, "Lenovo Legion Tab"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u8054\u60f3"

    const-string v2, "Lenovo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u52aa\u6bd4\u4e9a\u7ea2\u9b54"

    const-string v2, "nubia RedMagic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u7ea2\u9b54"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u52aa\u6bd4\u4e9a"

    const-string v2, "nubia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u4e2d\u5174"

    const-string v2, "ZTE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u534e\u7855"

    const-string v2, "ASUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u9ed1\u9ca8"

    const-string v2, "BlackShark"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u9524\u5b50"

    const-string v2, "Smartisan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u4e50\u89c6"

    const-string v2, "LeEco"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/sigmob/sdk/base/device/compat/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sigmob/sdk/base/device/compat/b;->b:Z

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->b(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 5

    .line 2
    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/sigmob/sdk/base/device/compat/b;->M:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sigmob/sdk/base/device/compat/b;->M:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "nova"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HUAWEI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "iQOO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vivo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Galaxy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Samsung "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "_CN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Legion"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lenovo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->q()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "\u575a\u679c"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smartisan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->r()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "\u4e50"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeEco Le "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_9
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->s()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "360"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "360 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_a
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_b
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_c
    const-string v0, "Pro+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "Pro Plus"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_d
    sput-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)V
    .locals 4

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/sigmob/sdk/base/device/compat/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/device/compat/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sigmob/sdk/base/device/compat/b;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->f:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->g:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->i:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->j:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->k:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->l:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_5
    :goto_1
    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->n:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->o:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_7
    :goto_2
    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ro.config.marketing_name"

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->q()Z

    move-result v0

    if-eqz v0, :cond_b

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_b
    :goto_3
    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "ro.vendor.product.ztename"

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->w()Z

    move-result v0

    if-eqz v0, :cond_c

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->v()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->A:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->x()Z

    move-result v0

    if-eqz v0, :cond_e

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->D()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->z:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->y()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "ro.product.model"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_10
    :goto_4
    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->B()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->C:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->C()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->D:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_12
    :goto_5
    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "ro.vendor.asus.product.mkt_name"

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->F()Z

    move-result v0

    if-eqz v0, :cond_13

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_13
    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->z()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->H:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_14
    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "ro.product.letv_name"

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->A()Z

    move-result v0

    if-eqz v0, :cond_15

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_15
    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v5, "ro.qiku.product.devicename"

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->G()Z

    move-result v0

    if-eqz v0, :cond_16

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_16
    sget-object v0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/c;->r()Z

    move-result v0

    if-eqz v0, :cond_17

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_device_name"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_17
    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->b()Z

    move-result p0

    if-nez p0, :cond_18

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->a()Z

    move-result p0

    if-eqz p0, :cond_19

    :cond_18
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->e:[Ljava/lang/String;

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_19
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->h()Z

    move-result p0

    if-nez p0, :cond_1a

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->g()Z

    move-result p0

    if-eqz p0, :cond_1b

    :cond_1a
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_1b
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->d()Z

    move-result p0

    if-nez p0, :cond_1c

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->c()Z

    move-result p0

    if-nez p0, :cond_1c

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->e()Z

    move-result p0

    if-eqz p0, :cond_1d

    :cond_1c
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->h:[Ljava/lang/String;

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_1d
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->f()Z

    move-result p0

    if-eqz p0, :cond_1e

    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->m:[Ljava/lang/String;

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_1e
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->l()Z

    move-result p0

    if-eqz p0, :cond_1f

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_1f
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->k()Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->y:[Ljava/lang/String;

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_20
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_21

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->n()Z

    move-result p0

    if-eqz p0, :cond_21

    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->B:[Ljava/lang/String;

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_21
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_22

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->o()Z

    move-result p0

    if-eqz p0, :cond_22

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_22
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->q()Z

    move-result p0

    if-eqz p0, :cond_23

    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->G:[Ljava/lang/String;

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_23
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_24

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->r()Z

    move-result p0

    if-eqz p0, :cond_24

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_24
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_25

    invoke-static {}, Lcom/sigmob/sdk/base/device/compat/a;->s()Z

    move-result p0

    if-eqz p0, :cond_25

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->a([Ljava/lang/String;)V

    :cond_25
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_29

    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {v2}, Lcom/sigmob/sdk/base/device/compat/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_26
    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    invoke-static {v3}, Lcom/sigmob/sdk/base/device/compat/b;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    invoke-static {v1}, Lcom/sigmob/sdk/base/device/compat/b;->a(Ljava/lang/String;)V

    :cond_27
    :goto_6
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_29

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {v0}, Lcom/sigmob/sdk/base/device/compat/b;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_28
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_29

    invoke-static {v1}, Lcom/sigmob/sdk/base/device/compat/b;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    invoke-static {v1}, Lcom/sigmob/sdk/base/device/compat/b;->a(Ljava/lang/String;)V

    :cond_29
    :goto_7
    sget-object p0, Lcom/sigmob/sdk/base/device/compat/b;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_8

    :cond_2a
    const-string p0, "net.hostname"

    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "^(?i)android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_8

    :cond_2b
    const-string v0, ".+-[a-zA-Z0-9]{10,}$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "-[a-zA-Z0-9]{10,}$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2c
    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    :goto_8
    return-void

    :cond_2d
    invoke-static {p0}, Lcom/sigmob/sdk/base/device/compat/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "[A-Z]{2,3}-[A-Z|0-9]{4}[a-zA-Z|0-9]*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "[A-Z0-9]{5,}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "[A-Z0-9]{4}-[A-Z0-9]{3,}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "[A-Z]{2}\\d{4,}-[A-Z0-9]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method
