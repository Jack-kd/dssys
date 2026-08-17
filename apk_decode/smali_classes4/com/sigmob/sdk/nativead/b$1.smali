.class Lcom/sigmob/sdk/nativead/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/network/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/nativead/b;->a(Lcom/sigmob/sdk/base/models/rtb/BidResponse;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/sigmob/sdk/nativead/b;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/nativead/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/b$1;->b:Lcom/sigmob/sdk/nativead/b;

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/b$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "\u53cd\u9988\u4e0a\u62a5\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sigmob/sdk/base/common/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static synthetic a(Lcom/czhj/volley/VolleyError;Landroid/content/Context;)V
    .locals 2

    .line 2
    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/czhj/volley/VolleyError;->networkResponse:Lcom/czhj/volley/NetworkResponse;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/czhj/volley/NetworkResponse;->statusCode:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53cd\u9988\u4e0a\u62a5\u5931\u8d25\uff0c\u9519\u8bef\u7801: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/sigmob/sdk/base/common/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic b(Lcom/czhj/volley/VolleyError;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/nativead/b$1;->a(Lcom/czhj/volley/VolleyError;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sigmob/sdk/nativead/b$1;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/b$1;->a:Landroid/content/Context;

    new-instance v1, Lcom/sigmob/sdk/nativead/L;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/nativead/L;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onErrorResponse(Lcom/czhj/volley/VolleyError;)V
    .locals 3

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/b$1;->a:Landroid/content/Context;

    new-instance v2, Lcom/sigmob/sdk/nativead/M;

    invoke-direct {v2, p1, v1}, Lcom/sigmob/sdk/nativead/M;-><init>(Lcom/czhj/volley/VolleyError;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
