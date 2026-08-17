.class public Lcom/sigmob/sdk/base/common/ao;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/ao$a;,
        Lcom/sigmob/sdk/base/common/ao$c;,
        Lcom/sigmob/sdk/base/common/ao$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/sigmob/sdk/base/common/ao$b;

.field private static final b:Lcom/sigmob/sdk/base/common/ao$c;


# instance fields
.field private final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sigmob/sdk/base/common/an;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/sigmob/sdk/base/common/ao$b;

.field private final e:Lcom/sigmob/sdk/base/common/ao$b;

.field private final f:Lcom/sigmob/sdk/base/common/ao$c;

.field private final g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sigmob/sdk/base/common/ao$1;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/ao$1;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/ao;->a:Lcom/sigmob/sdk/base/common/ao$b;

    new-instance v0, Lcom/sigmob/sdk/base/common/ao$2;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/ao$2;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/ao;->b:Lcom/sigmob/sdk/base/common/ao$c;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/base/common/ao$b;Lcom/sigmob/sdk/base/common/ao$b;Lcom/sigmob/sdk/base/common/ao$c;ZLcom/sigmob/sdk/base/models/BaseAdUnit;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/sigmob/sdk/base/common/an;",
            ">;",
            "Lcom/sigmob/sdk/base/common/ao$b;",
            "Lcom/sigmob/sdk/base/common/ao$b;",
            "Lcom/sigmob/sdk/base/common/ao$c;",
            "Z",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/ao;->c:Ljava/util/EnumSet;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/ao;->d:Lcom/sigmob/sdk/base/common/ao$b;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/ao;->e:Lcom/sigmob/sdk/base/common/ao$b;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/ao;->f:Lcom/sigmob/sdk/base/common/ao$c;

    iput-boolean p5, p0, Lcom/sigmob/sdk/base/common/ao;->h:Z

    iput-object p6, p0, Lcom/sigmob/sdk/base/common/ao;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/common/ao;->i:Z

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/common/ao;->j:Z

    iput-boolean p7, p0, Lcom/sigmob/sdk/base/common/ao;->k:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/base/common/ao$b;Lcom/sigmob/sdk/base/common/ao$b;Lcom/sigmob/sdk/base/common/ao$c;ZLcom/sigmob/sdk/base/models/BaseAdUnit;ZLcom/sigmob/sdk/base/common/ao$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/sigmob/sdk/base/common/ao;-><init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/base/common/ao$b;Lcom/sigmob/sdk/base/common/ao$b;Lcom/sigmob/sdk/base/common/ao$c;ZLcom/sigmob/sdk/base/models/BaseAdUnit;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/common/ao;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/ao;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-static {p3}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    if-nez p2, :cond_0

    sget-object p2, Lcom/sigmob/sdk/base/common/an;->h:Lcom/sigmob/sdk/base/common/an;

    :cond_0
    invoke-static {p3, p4}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p3, p0, Lcom/sigmob/sdk/base/common/ao;->d:Lcom/sigmob/sdk/base/common/ao$b;

    invoke-interface {p3, p1, p2}, Lcom/sigmob/sdk/base/common/ao$b;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V

    return-void
.end method

.method public static synthetic b()Lcom/sigmob/sdk/base/common/ao$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/sigmob/sdk/base/common/ao;->a:Lcom/sigmob/sdk/base/common/ao$b;

    return-object v0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/common/ao;)Lcom/sigmob/sdk/base/common/ao$b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/ao;->d:Lcom/sigmob/sdk/base/common/ao$b;

    return-object p0
.end method

.method public static synthetic c()Lcom/sigmob/sdk/base/common/ao$c;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/common/ao;->b:Lcom/sigmob/sdk/base/common/ao$c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/common/ao;->b(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/ao;->h:Z

    return v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12

    .line 3
    sget-object v0, Lcom/sigmob/sdk/base/common/an;->h:Lcom/sigmob/sdk/base/common/an;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ao;->c:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/sigmob/sdk/base/common/an;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/ao;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v7, v4}, Lcom/sigmob/sdk/base/common/an;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/ao;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result v5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x7

    if-eq v5, v6, :cond_0

    move-object v4, p2

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/ao;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :try_start_0
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/ao;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAndroidMarket()Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    move-result-object v3

    sget-object v4, Lcom/sigmob/sdk/base/common/an;->c:Lcom/sigmob/sdk/base/common/an;

    if-ne v7, v4, :cond_1

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v6, "market"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->market_url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v11

    goto :goto_0

    :catchall_0
    move-object v6, p0

    move-object v8, p1

    goto :goto_2

    :cond_1
    invoke-virtual {v7, v10, v5}, Lcom/sigmob/sdk/base/common/an;->a(Landroid/net/Uri;I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/sigmob/sdk/base/common/ao;->k:Z

    if-nez v3, :cond_2

    sget-object v3, Lcom/sigmob/sdk/base/common/an;->g:Lcom/sigmob/sdk/base/common/an;

    if-ne v3, v7, :cond_2

    new-instance v5, Lcom/sigmob/sdk/base/common/ao$3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, p0

    move-object v6, p0

    move-object v8, p1

    :try_start_1
    invoke-direct/range {v5 .. v11}, Lcom/sigmob/sdk/base/common/ao$3;-><init>(Lcom/sigmob/sdk/base/common/ao;Lcom/sigmob/sdk/base/common/an;Landroid/content/Context;Lcom/sigmob/sdk/base/common/ao;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {v11, v5}, Lcom/sigmob/sdk/base/common/ap;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/ap$a;)V

    goto :goto_1

    :cond_2
    move-object v6, p0

    move-object v8, p1

    iget-object p1, v6, Lcom/sigmob/sdk/base/common/ao;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v7, v8, v10, p0, p1}, Lcom/sigmob/sdk/base/common/an;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/ao;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v3, Lcom/sigmob/sdk/base/common/ao$4;

    invoke-direct {v3, p0, v11, v7}, Lcom/sigmob/sdk/base/common/ao$4;-><init>(Lcom/sigmob/sdk/base/common/ao;Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    move-object v6, p0

    move-object v8, p1

    goto :goto_3

    :catchall_1
    :goto_2
    iget-object p1, v6, Lcom/sigmob/sdk/base/common/ao;->d:Lcom/sigmob/sdk/base/common/ao$b;

    invoke-interface {p1, v11, v7}, Lcom/sigmob/sdk/base/common/ao$b;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V

    :goto_3
    move-object v3, v11

    goto :goto_4

    :cond_4
    move-object v6, p0

    move-object v8, p1

    :goto_4
    move-object p1, v8

    goto/16 :goto_0

    :cond_5
    move-object v6, p0

    :try_start_2
    const-string p1, "Link ignored. Unable to handle url: "

    invoke-direct {p0, v3, v0, p1, v2}, Lcom/sigmob/sdk/base/common/ao;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p1, v0

    const-string p2, "handleResolvedUrl error"

    invoke-static {p2, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    const/4 p1, 0x0

    return p1
.end method
