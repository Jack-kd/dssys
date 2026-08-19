.class public Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/sigmob/sdk/newInterstitial/SigAdPrivacyInfoView;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->e:Z

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->e:Z

    const/4 v1, 0x0

    const-string v2, "sig_isSmall"

    invoke-interface {p2, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->e:Z

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->e:Z

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "sig_ad_app_info_small_layout"

    goto :goto_0

    :cond_0
    const-string v0, "sig_ad_app_info_layout"

    :goto_0
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "sig_app_icon"

    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->a:Landroid/widget/ImageView;

    const-string v1, "sig_ad_title"

    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->b:Landroid/widget/TextView;

    const-string v1, "sig_ad_desc"

    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->c:Landroid/widget/TextView;

    const-string v1, "sig_ad_privacy_info"

    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/newInterstitial/SigAdPrivacyInfoView;

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->d:Lcom/sigmob/sdk/newInterstitial/SigAdPrivacyInfoView;

    return-void
.end method


# virtual methods
.method public getAdPrivacyInfo()Lcom/sigmob/sdk/newInterstitial/SigAdPrivacyInfoView;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->d:Lcom/sigmob/sdk/newInterstitial/SigAdPrivacyInfoView;

    return-object v0
.end method

.method public setAppInfoView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->a()Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/czhj/sdk/common/utils/ImageManager;->load(Ljava/lang/String;)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->into(Landroid/widget/ImageView;)V

    :cond_0
    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
