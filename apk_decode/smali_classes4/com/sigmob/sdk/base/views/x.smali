.class public abstract Lcom/sigmob/sdk/base/views/x;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/x;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/x;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/x;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/x;->getResName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "sig_ad_privacy_ad_logo"

    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/x;->a:Landroid/widget/ImageView;

    const-string v1, "sig_ad_privacy_view"

    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/x;->b:Landroid/view/View;

    const-string v1, "sig_ad_privacy_ll"

    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/x;->c:Landroid/view/View;

    const-string v1, "sig_ad_privacy_ad_text"

    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/x;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->a()Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/czhj/sdk/common/utils/ImageManager;->load(Ljava/lang/String;)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/x;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->into(Landroid/widget/ImageView;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    iget-object p2, p0, Lcom/sigmob/sdk/base/views/x;->b:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getPrivacyAdText()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/x;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPrivacyLl()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/x;->c:Landroid/view/View;

    return-object v0
.end method

.method public abstract getResName()Ljava/lang/String;
.end method
