.class public final Lcom/czhj/sdk/common/utils/RomUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "ro.build.uiversion"

.field private static final B:Ljava/lang/String; = "ro.build.MiFavor_version"

.field private static final C:Ljava/lang/String; = "ro.rom.version"

.field private static final D:Ljava/lang/String; = "ro.build.rom.id"

.field private static final E:Ljava/lang/String; = "hw_sc.build.platform.version"

.field private static final F:[Ljava/lang/String;

.field private static final G:Ljava/lang/String; = "unknown"

.field private static H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo; = null

.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

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

.field private static final p:[Ljava/lang/String;

.field private static final q:[Ljava/lang/String;

.field private static final r:[Ljava/lang/String;

.field private static final s:[Ljava/lang/String;

.field private static final t:[Ljava/lang/String;

.field private static final u:[Ljava/lang/String;

.field private static final v:Ljava/lang/String; = "ro.build.version.emui"

.field private static final w:Ljava/lang/String; = "ro.vivo.os.build.display.id"

.field private static final x:Ljava/lang/String; = "ro.build.version.incremental"

.field private static final y:[Ljava/lang/String;

.field private static final z:Ljava/lang/String; = "ro.letv.release.version"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "huawei"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->a:[Ljava/lang/String;

    const-string v0, "vivo"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->b:[Ljava/lang/String;

    const-string v0, "xiaomi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->c:[Ljava/lang/String;

    const-string v0, "oppo"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->d:[Ljava/lang/String;

    const-string v0, "leeco"

    const-string v1, "letv"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->e:[Ljava/lang/String;

    const-string v0, "360"

    const-string v1, "qiku"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->f:[Ljava/lang/String;

    const-string v0, "zte"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->g:[Ljava/lang/String;

    const-string v0, "oneplus"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->h:[Ljava/lang/String;

    const-string v0, "nubia"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->i:[Ljava/lang/String;

    const-string v0, "coolpad"

    const-string v1, "yulong"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->j:[Ljava/lang/String;

    const-string v0, "lg"

    const-string v1, "lge"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->k:[Ljava/lang/String;

    const-string v0, "google"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->l:[Ljava/lang/String;

    const-string v0, "samsung"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->m:[Ljava/lang/String;

    const-string v0, "meizu"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->n:[Ljava/lang/String;

    const-string v0, "lenovo"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->o:[Ljava/lang/String;

    const-string v0, "SmartisanOS"

    const-string v1, "deltainno"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->p:[Ljava/lang/String;

    const-string v0, "Sense"

    const-string v1, "htc"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->q:[Ljava/lang/String;

    const-string v0, "sony"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->r:[Ljava/lang/String;

    const-string v0, "amigo"

    const-string v1, "gionee"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->s:[Ljava/lang/String;

    const-string v0, "motorola"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->t:[Ljava/lang/String;

    const-string v0, "honor"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->u:[Ljava/lang/String;

    const-string v0, "ro.build.version.opporom"

    const-string v1, "ro.build.version.oplusrom.display"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->y:[Ljava/lang/String;

    const-string v0, "msc.config.magic.version"

    const-string v1, "ro.build.version.magic"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->F:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/czhj/sdk/common/utils/RomUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "unknown"

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :try_start_0
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public static a()Z
    .locals 3

    .line 2
    invoke-static {}, Lcom/czhj/sdk/common/utils/RomUtils;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/czhj/sdk/common/utils/RomUtils;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->u:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/czhj/sdk/common/utils/RomUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/czhj/sdk/common/utils/RomUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_2

    invoke-static {p0}, Lcom/czhj/sdk/common/utils/RomUtils;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static b()Z
    .locals 1

    .line 2
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/RomUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const-string v0, "unknown"

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x400

    invoke-direct {v1, v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object p0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_0

    :catchall_1
    move-object v0, v1

    :catchall_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const-string v0, "unknown"

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2
    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "build.prop"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1, p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-class v1, Ljava/lang/String;

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getRomInfo()Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;
    .locals 5

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    invoke-direct {v0}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;-><init>()V

    sput-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    invoke-static {}, Lcom/czhj/sdk/common/utils/RomUtils;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/czhj/sdk/common/utils/RomUtils;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/czhj/sdk/common/utils/RomUtils;->isHarmonyOs()Z

    move-result v2

    const-string v3, "com.huawei.appmarket"

    if-eqz v2, :cond_1

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "harmony"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "hw_sc.build.platform.version"

    invoke-static {v1}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->b(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    invoke-static {v0, v3}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->c(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    return-object v0

    :cond_1
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->a:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "EMUI"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    aget-object v1, v1, v4

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->b(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->u:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "MagicOS"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->F:[Ljava/lang/String;

    array-length v1, v0

    :goto_3
    if-ge v3, v1, :cond_5

    aget-object v2, v0, v3

    invoke-static {v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    invoke-static {v2, v4}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->b(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "com.hihonor.appmarket"

    :goto_5
    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->c(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->b:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "OriginOS"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "ro.vivo.os.build.display.id"

    invoke-static {v1}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->b(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "com.bbk.appstore"

    goto :goto_5

    :cond_7
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "MIUI"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "ro.build.version.incremental"

    invoke-static {v1}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->b(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "com.xiaomi.market"

    goto :goto_5

    :cond_8
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->d:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "ColorOS"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->y:[Ljava/lang/String;

    array-length v1, v0

    :goto_6
    if-ge v3, v1, :cond_a

    aget-object v2, v0, v3

    invoke-static {v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    invoke-static {v2, v4}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->b(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_b

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "com.oppo.market"

    :goto_8
    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->c(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_9

    :cond_b
    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "com.heytap.market"

    goto :goto_8

    :goto_9
    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    return-object v0

    :cond_c
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->e:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "EUI"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "ro.letv.release.version"

    :goto_a
    invoke-static {v1}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->b(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->f:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    aget-object v1, v2, v3

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "ro.build.uiversion"

    goto :goto_a

    :cond_e
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->g:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    aget-object v1, v2, v3

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "ro.build.MiFavor_version"

    goto :goto_a

    :cond_f
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->h:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    aget-object v1, v2, v3

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "ro.rom.version"

    goto :goto_a

    :cond_10
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->i:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "NubiaUI"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "ro.build.rom.id"

    invoke-static {v1}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->b(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "cn.nubia.neostore"

    goto/16 :goto_5

    :cond_11
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->j:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    aget-object v1, v2, v3

    :goto_b
    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_d

    :cond_12
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->k:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    aget-object v1, v2, v3

    goto :goto_b

    :cond_13
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->l:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    aget-object v1, v2, v3

    goto :goto_b

    :cond_14
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->m:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    aget-object v1, v2, v3

    goto :goto_b

    :cond_15
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->n:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "Flyme"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "com.meizu.mstore"

    :goto_c
    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->c(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_d

    :cond_16
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->o:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    aget-object v1, v2, v3

    goto :goto_b

    :cond_17
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->p:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    aget-object v1, v2, v3

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, "com.smartisanos.appstore"

    goto :goto_c

    :cond_18
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->q:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    aget-object v1, v2, v3

    goto :goto_b

    :cond_19
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->r:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    aget-object v1, v2, v3

    goto :goto_b

    :cond_1a
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->s:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    aget-object v1, v2, v3

    goto/16 :goto_b

    :cond_1b
    sget-object v2, Lcom/czhj/sdk/common/utils/RomUtils;->t:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/common/utils/RomUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    aget-object v1, v2, v3

    goto/16 :goto_b

    :cond_1c
    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    goto/16 :goto_b

    :goto_d
    sget-object v0, Lcom/czhj/sdk/common/utils/RomUtils;->H:Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    const-string v1, ""

    goto/16 :goto_a
.end method

.method public static isHarmonyOs()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    const-string v0, "com.huawei.system.BuildEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getOsBrand"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const-string v1, "harmony"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    return v2
.end method

.method public static isHuawei()Z
    .locals 2

    invoke-static {}, Lcom/czhj/sdk/common/utils/RomUtils;->getRomInfo()Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->a(Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMUI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/czhj/sdk/common/utils/RomUtils;->isHarmonyOs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
