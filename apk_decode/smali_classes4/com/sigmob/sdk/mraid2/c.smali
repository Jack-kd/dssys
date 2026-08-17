.class public Lcom/sigmob/sdk/mraid2/c;
.super Lcom/sigmob/sdk/mraid2/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/mraid2/c$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "Mraid2AdContainer"

.field private static final r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/mraid2/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/sigmob/sdk/mraid2/c;

.field private d:Lcom/sigmob/sdk/mraid2/d;

.field private e:Lcom/sigmob/sdk/mraid2/c;

.field private final f:Ljava/lang/String;

.field private g:Lcom/sigmob/sdk/mraid2/v;

.field private h:Lcom/sigmob/sdk/mraid2/t;

.field private i:Lcom/sigmob/sdk/mraid2/a;

.field private j:Z

.field private k:Landroid/widget/FrameLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Z

.field private n:Lorg/json/JSONObject;

.field private o:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final p:Lcom/sigmob/sdk/mraid2/i;

.field private q:Lcom/sigmob/sdk/base/common/g;

.field private final s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/mraid2/q;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/sigmob/sdk/mraid2/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/mraid2/c;->r:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/FrameLayout;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;",
            "Landroid/widget/FrameLayout;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/mraid2/c;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/FrameLayout;Lcom/sigmob/sdk/mraid2/c;Lorg/json/JSONObject;)V

    new-instance p1, Lcom/sigmob/sdk/mraid2/c$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sigmob/sdk/mraid2/c$a;-><init>(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/mraid2/c$1;)V

    const-string p2, "sigandroidh5"

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/mraid2/x;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/FrameLayout;Lcom/sigmob/sdk/mraid2/c;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;",
            "Landroid/widget/FrameLayout;",
            "Lcom/sigmob/sdk/mraid2/c;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid2/x;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid2/c;->m:Z

    new-instance v0, Lcom/sigmob/sdk/mraid2/c$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid2/c$1;-><init>(Lcom/sigmob/sdk/mraid2/c;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/c;->p:Lcom/sigmob/sdk/mraid2/i;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/c;->s:Ljava/util/HashMap;

    new-instance v0, Lcom/sigmob/sdk/mraid2/c$3;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid2/c$3;-><init>(Lcom/sigmob/sdk/mraid2/c;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/c;->t:Lcom/sigmob/sdk/mraid2/k;

    iput-object p0, p0, Lcom/sigmob/sdk/mraid2/c;->e:Lcom/sigmob/sdk/mraid2/c;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid2/c;->k:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/sigmob/sdk/mraid2/c;->c:Lcom/sigmob/sdk/mraid2/c;

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid2/c;->j:Z

    if-nez p5, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "wv_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sigmob/sdk/mraid2/c;->f:Ljava/lang/String;

    sget-object p4, Lcom/sigmob/sdk/mraid2/c;->r:Ljava/util/HashMap;

    invoke-virtual {p4, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    const-string p4, "args"

    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/sigmob/sdk/mraid2/c;->n:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string p3, "uniqueId"

    invoke-virtual {p5, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sigmob/sdk/mraid2/c;->f:Ljava/lang/String;

    :goto_1
    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/sigmob/sdk/mraid2/x;->a(Z)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/x;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/x;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    const-string p4, "Mraid2AdContainer"

    invoke-static {p4, p3}, Lcom/sigmob/sdk/base/utils/j;->a(Ljava/lang/String;Landroid/webkit/WebSettings;)V

    iget-object p3, p0, Lcom/sigmob/sdk/mraid2/c;->p:Lcom/sigmob/sdk/mraid2/i;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/o;->ad()Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/sigmob/sdk/base/l;->a(Z)V

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sigmob/sdk/mraid2/c;->p:Lcom/sigmob/sdk/mraid2/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isDisablexRequestWith()Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/sigmob/sdk/base/l;->b(Z)V

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c;->p:Lcom/sigmob/sdk/mraid2/i;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/x;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Lcom/sigmob/sdk/mraid2/d;

    invoke-direct {p1, p2}, Lcom/sigmob/sdk/mraid2/d;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/c;->d:Lcom/sigmob/sdk/mraid2/d;

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/c;->t:Lcom/sigmob/sdk/mraid2/k;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->a(Lcom/sigmob/sdk/mraid2/k;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c;->d:Lcom/sigmob/sdk/mraid2/d;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/mraid2/d;->a(Lcom/sigmob/sdk/mraid2/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/c;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/c;->l:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/c;->o:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/c;->o:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/c;->e:Lcom/sigmob/sdk/mraid2/c;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/c;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid2/c;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/c;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid2/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 9
    new-instance v0, Lcom/sigmob/sdk/mraid/t;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/mraid/t;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/sigmob/sdk/mraid2/c$4;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid2/c$4;-><init>(Lcom/sigmob/sdk/mraid2/c;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/t;->a(Lcom/sigmob/sdk/mraid/u;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sigmob/sdk/mraid/t;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/t;->a()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    sget-object p2, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/c;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/czhj/sdk/common/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid2/c;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/c;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid2/c;->j:Z

    return p1
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/czhj/sdk/common/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .line 12
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdSetting()Lcom/sigmob/sdk/base/models/rtb/AdSetting;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->scheme_white_list:Ljava/util/List;

    :goto_0
    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    move v0, v1

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_3
    return v1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/c;->n:Lorg/json/JSONObject;

    return-object p0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/c;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid2/c;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/c;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid2/c;->m:Z

    return p1
.end method

.method public static synthetic c(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/c;->d:Lcom/sigmob/sdk/mraid2/d;

    return-object p0
.end method

.method public static synthetic c()Ljava/util/HashMap;
    .locals 1

    .line 2
    sget-object v0, Lcom/sigmob/sdk/mraid2/c;->r:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic d(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/c;->c:Lcom/sigmob/sdk/mraid2/c;

    return-object p0
.end method

.method public static synthetic e(Lcom/sigmob/sdk/mraid2/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 5

    .line 2
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/mraid2/d$a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c;->d:Lcom/sigmob/sdk/mraid2/d;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid2/d$a;-><init>(Lcom/sigmob/sdk/mraid2/d;)V

    const-string v1, "sigandroid"

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/mraid2/x;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Md5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/utils/n;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/n;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "endcard.html"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/x;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".tgz"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/czhj/volley/toolbox/DownloadItem;

    invoke-direct {v0}, Lcom/czhj/volley/toolbox/DownloadItem;-><init>()V

    iput-object p1, v0, Lcom/czhj/volley/toolbox/DownloadItem;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/czhj/volley/toolbox/DownloadItem;->filePath:Ljava/lang/String;

    sget-object p1, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->FILE:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    iput-object p1, v0, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    invoke-static {}, Lcom/sigmob/sdk/base/common/t;->a()Lcom/czhj/volley/toolbox/FileDownloader;

    move-result-object p1

    new-instance v1, Lcom/sigmob/sdk/mraid2/c$2;

    invoke-direct {v1, p0, v2}, Lcom/sigmob/sdk/mraid2/c$2;-><init>(Lcom/sigmob/sdk/mraid2/c;Ljava/io/File;)V

    invoke-virtual {p1, v0, v1}, Lcom/czhj/volley/toolbox/FileDownloader;->add(Lcom/czhj/volley/toolbox/DownloadItem;Lcom/czhj/volley/toolbox/FileDownloadRequest$FileDownloadListener;)Lcom/czhj/volley/toolbox/FileDownloader$DownloadController;

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/c;->getAdUnitList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/c;->getAdUnitList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->scene:Lcom/sigmob/sdk/base/models/rtb/Template;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/rtb/Template;->templateId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->scene:Lcom/sigmob/sdk/base/models/rtb/Template;

    :goto_1
    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/Template;->context:Lcom/czhj/wire/okio/ByteString;

    invoke-virtual {p1}, Lcom/czhj/wire/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/rtb/Ad;->materials:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->main_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/rtb/Template;->templateId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p1, v2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->main_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->sub_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/rtb/Template;->templateId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p1, v2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->sub_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/c;->a(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public static synthetic f(Lcom/sigmob/sdk/mraid2/c;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/mraid2/c;->j:Z

    return p0
.end method

.method public static synthetic g(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/a;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/c;->i:Lcom/sigmob/sdk/mraid2/a;

    return-object p0
.end method

.method public static getMraidWebViews()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/mraid2/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/sdk/mraid2/c;->r:Ljava/util/HashMap;

    return-object v0
.end method

.method private getTemplate()Lcom/sigmob/sdk/base/models/rtb/Template;
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/c;->getAdUnitList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    iget-object v1, v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->scene:Lcom/sigmob/sdk/base/models/rtb/Template;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v0

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->main_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    if-nez v1, :cond_4

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->sub_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    return-object v0

    :cond_4
    return-object v1
.end method

.method public static synthetic h(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/c;->e:Lcom/sigmob/sdk/mraid2/c;

    return-object p0
.end method

.method public static synthetic i(Lcom/sigmob/sdk/mraid2/c;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/c;->s:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/c;->h:Lcom/sigmob/sdk/mraid2/t;

    return-object p0
.end method

.method public static synthetic k(Lcom/sigmob/sdk/mraid2/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sigmob/sdk/mraid2/c;->m:Z

    return p0
.end method

.method public static synthetic l(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/c;->l:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic m(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/c;->k:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 5
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/c;->getTemplate()Lcom/sigmob/sdk/base/models/rtb/Template;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/Template;->context:Lcom/czhj/wire/okio/ByteString;

    invoke-virtual {v1}, Lcom/czhj/wire/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/Template;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "template type error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/Template;->type:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid2/c;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/mraid2/c;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/mraid2/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    .line 8
    new-instance v0, Lcom/sigmob/sdk/mraid2/d$a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c;->d:Lcom/sigmob/sdk/mraid2/d;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid2/d$a;-><init>(Lcom/sigmob/sdk/mraid2/d;)V

    const-string v1, "sigandroid"

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/mraid2/x;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Md5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".html"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/utils/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/x;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getBaseUrlScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://localhost/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    const-string v5, "text/html"

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sigmob/sdk/mraid2/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/c;->setLoadListener(Lcom/sigmob/sdk/mraid2/a;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/c;->setNextWebViewListener(Lcom/sigmob/sdk/mraid2/t;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/c;->setScrollTouchListener(Lcom/sigmob/sdk/mraid2/v;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c;->e:Lcom/sigmob/sdk/mraid2/c;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/c;->e:Lcom/sigmob/sdk/mraid2/c;

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c;->d:Lcom/sigmob/sdk/mraid2/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid2/d;->g()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/c;->d:Lcom/sigmob/sdk/mraid2/d;

    :cond_1
    invoke-super {p0}, Lcom/sigmob/sdk/mraid2/x;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/sigmob/sdk/mraid2/d$a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c;->d:Lcom/sigmob/sdk/mraid2/d;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid2/d$a;-><init>(Lcom/sigmob/sdk/mraid2/d;)V

    const-string v1, "sigandroid"

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/mraid2/x;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/x;->c(Ljava/lang/String;)V

    return-void
.end method

.method public getAdSize()Lcom/sigmob/sdk/base/common/g;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c;->q:Lcom/sigmob/sdk/base/common/g;

    return-object v0
.end method

.method public getAdUnitList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c;->d:Lcom/sigmob/sdk/mraid2/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/d;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMraidBridge()Lcom/sigmob/sdk/mraid2/d;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c;->d:Lcom/sigmob/sdk/mraid2/d;

    return-object v0
.end method

.method public getScrollTouchListener()Lcom/sigmob/sdk/mraid2/v;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c;->g:Lcom/sigmob/sdk/mraid2/v;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c;->d:Lcom/sigmob/sdk/mraid2/d;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->a(Z)V

    return-void
.end method

.method public setAdSize(Lcom/sigmob/sdk/base/common/g;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/c;->q:Lcom/sigmob/sdk/base/common/g;

    return-void
.end method

.method public setLoadListener(Lcom/sigmob/sdk/mraid2/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/c;->i:Lcom/sigmob/sdk/mraid2/a;

    return-void
.end method

.method public setNextWebViewListener(Lcom/sigmob/sdk/mraid2/t;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/c;->h:Lcom/sigmob/sdk/mraid2/t;

    return-void
.end method

.method public setScrollTouchListener(Lcom/sigmob/sdk/mraid2/v;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/c;->g:Lcom/sigmob/sdk/mraid2/v;

    return-void
.end method
