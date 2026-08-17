.class public abstract enum Lcom/sigmob/sdk/base/common/an;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/common/an;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/common/an;

.field public static final enum b:Lcom/sigmob/sdk/base/common/an;

.field public static final enum c:Lcom/sigmob/sdk/base/common/an;

.field public static final enum d:Lcom/sigmob/sdk/base/common/an;

.field public static final enum e:Lcom/sigmob/sdk/base/common/an;

.field public static final enum f:Lcom/sigmob/sdk/base/common/an;

.field public static final enum g:Lcom/sigmob/sdk/base/common/an;

.field public static final enum h:Lcom/sigmob/sdk/base/common/an;

.field private static final synthetic j:[Lcom/sigmob/sdk/base/common/an;


# instance fields
.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/sigmob/sdk/base/common/an$1;

    const-string v1, "IGNORE_ABOUT_SCHEME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sigmob/sdk/base/common/an$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sigmob/sdk/base/common/an;->a:Lcom/sigmob/sdk/base/common/an;

    new-instance v1, Lcom/sigmob/sdk/base/common/an$2;

    const-string v3, "MINI_PROGRAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/sigmob/sdk/base/common/an$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/sigmob/sdk/base/common/an;->b:Lcom/sigmob/sdk/base/common/an;

    new-instance v3, Lcom/sigmob/sdk/base/common/an$3;

    const-string v5, "FOLLOW_DEEP_LINK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/sigmob/sdk/base/common/an$3;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/sigmob/sdk/base/common/an;->c:Lcom/sigmob/sdk/base/common/an;

    new-instance v5, Lcom/sigmob/sdk/base/common/an$4;

    const-string v7, "FOLLOW_PACKAGE_NAME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/sigmob/sdk/base/common/an$4;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/sigmob/sdk/base/common/an;->d:Lcom/sigmob/sdk/base/common/an;

    new-instance v7, Lcom/sigmob/sdk/base/common/an$5;

    const-string v9, "MARKET_SCHEME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lcom/sigmob/sdk/base/common/an$5;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/sigmob/sdk/base/common/an;->e:Lcom/sigmob/sdk/base/common/an;

    new-instance v9, Lcom/sigmob/sdk/base/common/an$6;

    const-string v11, "DOWNLOAD_APK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v4}, Lcom/sigmob/sdk/base/common/an$6;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/sigmob/sdk/base/common/an;->f:Lcom/sigmob/sdk/base/common/an;

    new-instance v11, Lcom/sigmob/sdk/base/common/an$7;

    const-string v13, "OPEN_WITH_BROWSER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v4}, Lcom/sigmob/sdk/base/common/an$7;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lcom/sigmob/sdk/base/common/an;->g:Lcom/sigmob/sdk/base/common/an;

    new-instance v13, Lcom/sigmob/sdk/base/common/an$8;

    const-string v15, "NOOP"

    move/from16 v16, v4

    const/4 v4, 0x7

    invoke-direct {v13, v15, v4, v2}, Lcom/sigmob/sdk/base/common/an$8;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lcom/sigmob/sdk/base/common/an;->h:Lcom/sigmob/sdk/base/common/an;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/sigmob/sdk/base/common/an;

    aput-object v0, v15, v2

    aput-object v1, v15, v16

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    aput-object v11, v15, v14

    aput-object v13, v15, v4

    sput-object v15, Lcom/sigmob/sdk/base/common/an;->j:[Lcom/sigmob/sdk/base/common/an;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/sigmob/sdk/base/common/an;->i:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZLcom/sigmob/sdk/base/common/an$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/an;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/common/an;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/an;->b(Lcom/sigmob/sdk/base/common/an;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/sigmob/sdk/base/common/an;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDeeplinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result p2

    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": error = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": deeplinkUrl = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", interactionType = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/an;
    .locals 1

    const-class v0, Lcom/sigmob/sdk/base/common/an;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/common/an;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/common/an;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/common/an;->j:[Lcom/sigmob/sdk/base/common/an;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/common/an;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/common/an;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;
.end method

.method public abstract a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/ao;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public a(Lcom/sigmob/sdk/base/common/ao;Landroid/content/Context;Landroid/net/Uri;ZLcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad event URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/an;->i:Z

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Attempted to handle action without user interaction."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3, p1, p5}, Lcom/sigmob/sdk/base/common/an;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/ao;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public abstract a(Landroid/net/Uri;I)Z
.end method
