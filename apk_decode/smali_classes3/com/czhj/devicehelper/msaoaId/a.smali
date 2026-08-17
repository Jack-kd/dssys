.class public Lcom/czhj/devicehelper/msaoaId/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/devicehelper/msaoaId/a$a;,
        Lcom/czhj/devicehelper/msaoaId/a$b;
    }
.end annotation


# static fields
.field private static a:Lcom/czhj/devicehelper/msaoaId/a$a;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static h:Ljava/lang/String;

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/czhj/devicehelper/msaoaId/a$1;

    invoke-direct {v0}, Lcom/czhj/devicehelper/msaoaId/a$1;-><init>()V

    sput-object v0, Lcom/czhj/devicehelper/msaoaId/a;->i:Ljava/util/List;

    new-instance v0, Lcom/czhj/devicehelper/msaoaId/a$2;

    invoke-direct {v0}, Lcom/czhj/devicehelper/msaoaId/a$2;-><init>()V

    sput-object v0, Lcom/czhj/devicehelper/msaoaId/a;->j:Ljava/util/List;

    invoke-static {}, Lcom/czhj/devicehelper/msaoaId/a;->e()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Lcom/czhj/devicehelper/msaoaId/a;->e:Ljava/lang/Class;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/czhj/devicehelper/msaoaId/a;->d()V

    if-eqz p0, :cond_2

    sget-object v0, Lcom/czhj/devicehelper/msaoaId/a;->g:Ljava/lang/Class;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/czhj/devicehelper/msaoaId/a;->d:Ljava/lang/Class;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/czhj/devicehelper/msaoaId/a;->e:Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/czhj/devicehelper/msaoaId/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/czhj/devicehelper/msaoaId/a;->b(Landroid/content/Context;)V

    return-void

    :cond_1
    sget-object p0, Lcom/czhj/devicehelper/msaoaId/a;->a:Lcom/czhj/devicehelper/msaoaId/a$a;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "OAID \u8bfb\u53d6\u7c7b\u521b\u5efa\u5931\u8d25"

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object p0, Lcom/czhj/devicehelper/msaoaId/a;->a:Lcom/czhj/devicehelper/msaoaId/a$a;

    if-eqz p0, :cond_3

    :goto_1
    sget-object v0, Lcom/czhj/devicehelper/msaoaId/a;->c:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/czhj/devicehelper/msaoaId/a$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object p0, Lcom/czhj/devicehelper/msaoaId/a;->a:Lcom/czhj/devicehelper/msaoaId/a$a;

    if-eqz p0, :cond_3

    sget-object v0, Lcom/czhj/devicehelper/msaoaId/a;->c:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/czhj/devicehelper/msaoaId/a$a;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/czhj/devicehelper/msaoaId/a$a;)V
    .locals 0

    .line 3
    sput-object p1, Lcom/czhj/devicehelper/msaoaId/a;->a:Lcom/czhj/devicehelper/msaoaId/a$a;

    invoke-static {p0}, Lcom/czhj/devicehelper/msaoaId/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 4
    sput-object p0, Lcom/czhj/devicehelper/msaoaId/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b()Lcom/czhj/devicehelper/msaoaId/a$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/czhj/devicehelper/msaoaId/a;->a:Lcom/czhj/devicehelper/msaoaId/a$a;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 6

    .line 2
    const-class v0, Landroid/content/Context;

    :try_start_0
    invoke-static {p0}, Lcom/czhj/devicehelper/msaoaId/a;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lcom/czhj/devicehelper/msaoaId/a;->f:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-string v2, "classLoader"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sget-object v2, Lcom/czhj/devicehelper/msaoaId/a;->f:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/czhj/devicehelper/msaoaId/a;->f:Ljava/lang/Class;

    const-string v2, "InitEntry"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/czhj/devicehelper/msaoaId/a;->f:Ljava/lang/Class;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    new-instance v1, Lcom/czhj/devicehelper/msaoaId/a$b;

    invoke-direct {v1}, Lcom/czhj/devicehelper/msaoaId/a$b;-><init>()V

    sget-object v2, Lcom/czhj/devicehelper/msaoaId/a;->g:Ljava/lang/Class;

    const-string v3, "InitSdk"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v5, Lcom/czhj/devicehelper/msaoaId/a;->d:Ljava/lang/Class;

    filled-new-array {v0, v4, v5}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    sget-object v4, Lcom/czhj/devicehelper/msaoaId/a;->d:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {p0, v2, v1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MdidSdkHelper ErrorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    const v0, 0xf63e6

    if-eq p0, v0, :cond_1

    const v0, 0xf63e2

    if-eq p0, v0, :cond_1

    sget-object p0, Lcom/czhj/devicehelper/msaoaId/a;->a:Lcom/czhj/devicehelper/msaoaId/a$a;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/czhj/devicehelper/msaoaId/a;->c:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/czhj/devicehelper/msaoaId/a$a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object p0, Lcom/czhj/devicehelper/msaoaId/a;->a:Lcom/czhj/devicehelper/msaoaId/a$a;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/czhj/devicehelper/msaoaId/a;->c:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/czhj/devicehelper/msaoaId/a$a;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .line 3
    sput-object p0, Lcom/czhj/devicehelper/msaoaId/a;->h:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/czhj/devicehelper/msaoaId/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcom/czhj/devicehelper/msaoaId/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 5

    .line 3
    :try_start_0
    sget-object v0, Lcom/czhj/devicehelper/msaoaId/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/czhj/devicehelper/msaoaId/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/czhj/devicehelper/msaoaId/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/czhj/devicehelper/msaoaId/a;->g:Ljava/lang/Class;

    const-string v2, "InitCert"

    const-class v3, Landroid/content/Context;

    const-class v4, Ljava/lang/String;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cert.pem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    sget-object v1, Lcom/czhj/devicehelper/msaoaId/a;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/czhj/devicehelper/msaoaId/a;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    const-string p0, "loadPemFromAssetFile failed"

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private static d()V
    .locals 2

    .line 2
    const-string v0, "com.bun.miitmdid.core.JLibrary"

    :try_start_0
    const-class v1, Lcom/bun/miitmdid/core/MdidSdkHelper;

    sput-object v1, Lcom/czhj/devicehelper/msaoaId/a;->g:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-class v1, Lcom/bun/miitmdid/interfaces/IIdentifierListener;

    sput-object v1, Lcom/czhj/devicehelper/msaoaId/a;->d:Ljava/lang/Class;

    const-class v1, Lcom/bun/miitmdid/interfaces/IdSupplier;

    sput-object v1, Lcom/czhj/devicehelper/msaoaId/a;->e:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    :try_start_2
    const-string v1, "com.bun.supplier.IIdentifierListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/czhj/devicehelper/msaoaId/a;->d:Ljava/lang/Class;

    const-string v1, "com.bun.supplier.IdSupplier"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/czhj/devicehelper/msaoaId/a;->e:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/czhj/devicehelper/msaoaId/a;->f:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    :try_start_3
    const-string v1, "com.bun.miitmdid.core.IIdentifierListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/czhj/devicehelper/msaoaId/a;->d:Ljava/lang/Class;

    const-string v1, "com.bun.miitmdid.supplier.IdSupplier"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/czhj/devicehelper/msaoaId/a;->e:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/czhj/devicehelper/msaoaId/a;->f:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :goto_0
    return-void

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static e()V
    .locals 2

    sget-object v0, Lcom/czhj/devicehelper/msaoaId/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void
.end method
