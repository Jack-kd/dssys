.class public Lcom/ubix/ssp/ad/d/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/open/nativee/NativeAd;
.implements Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;
.implements Lcom/ubix/ssp/open/nativee/NativeAd$CustomReporter;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:J

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:I

.field private I:I

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field N:I

.field private O:Z

.field private a:Lcom/ubix/ssp/ad/i/c;

.field private b:Lcom/ubix/ssp/ad/d/a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ubix/ssp/open/nativee/UBiXImage;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:J

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:J

.field private y:Ljava/lang/String;

.field private z:Lcom/ubix/ssp/ad/d/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/d/h;->C:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/d/h;->D:I

    const-string v1, ""

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/h;->L:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/h;->M:Ljava/util/HashMap;

    iput v0, p0, Lcom/ubix/ssp/ad/d/h;->N:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/h;->O:Z

    return-void
.end method

.method private getPR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->L:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/d/h;->i:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ubix/ssp/ad/d/h;->t:J

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->w:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/f;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->z:Lcom/ubix/ssp/ad/d/f;

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/i/c;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->k:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ubix/ssp/open/nativee/UBiXImage;",
            ">;)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/h;->l:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/d/h;->D:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ubix/ssp/ad/d/h;->x:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->j:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/h;->B:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/d/h;->I:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ubix/ssp/ad/d/h;->C:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->A:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/h;->K:Z

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/d/h;->H:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->h:Ljava/lang/String;

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/c;->m(Lcom/ubix/ssp/ad/d/a;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/h;->z:Lcom/ubix/ssp/ad/d/f;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->y:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->E:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->d:Ljava/lang/String;

    return-void
.end method

.method public getActionButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getAdLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->w:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAdSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDownloadSize()J
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/h;->t:J

    return-wide v0
.end method

.method public getAppICPNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIntroduceLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLCPNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPermissionLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPrivacyLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPublisher()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSuitableAge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeType()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/h;->i:I

    return v0
.end method

.method public getCustomReporter()Lcom/ubix/ssp/open/nativee/NativeAd$CustomReporter;
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/h;->K:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomizeVideo()Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;
    .locals 0

    return-object p0
.end method

.method public getDeeplinkUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->E:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadAppStatus()I
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/c;->n(Lcom/ubix/ssp/ad/d/a;)I

    move-result v0

    return v0
.end method

.method public getDownloadProgress()I
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/c;->e(Lcom/ubix/ssp/ad/d/a;)I

    move-result v0

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->M:Ljava/util/HashMap;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ubix/ssp/open/nativee/UBiXImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getMaterialId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/c;->t(Lcom/ubix/ssp/ad/d/a;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->z:Lcom/ubix/ssp/ad/d/f;

    return-object v0
.end method

.method public getPrice()J
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/h;->x:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/h;->C:J

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/h;->I:I

    return v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/h;->H:I

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->F:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->m:Ljava/lang/String;

    return-void
.end method

.method public isDownloadAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/h;->l:Z

    return v0
.end method

.method public isShakeAd()Z
    .locals 2

    iget v0, p0, Lcom/ubix/ssp/ad/d/h;->D:I

    const/16 v1, 0x202

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportCustomShake()Z
    .locals 2

    iget v0, p0, Lcom/ubix/ssp/ad/d/h;->D:I

    const/16 v1, 0x202

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/c;->s(Lcom/ubix/ssp/ad/d/a;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/h;->B:Z

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->e:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->L:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->G:Ljava/lang/String;

    return-void
.end method

.method public lossNotice(Lcom/ubix/ssp/open/UBiXAdLossInfo;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/UBiXAdLossInfo;->getInfo()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ubix/ssp/ad/i/c;->c(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->c:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->J:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->g:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->u:Ljava/lang/String;

    return-void
.end method

.method public pauseVideo()V
    .locals 0

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->s:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->n:Ljava/lang/String;

    return-void
.end method

.method public registerViews(Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ubix/ssp/ad/i/c;->b(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    :cond_0
    return-void
.end method

.method public registerViews(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    :cond_0
    return-void
.end method

.method public reportAdClick(Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;Landroid/view/View;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;->getValue()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/ubix/ssp/ad/i/c;->a(Ljava/lang/String;Landroid/view/View;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public reportVideoComplete()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 v2, 0x13ec

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 v2, 0x1450

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public reportVideoError()V
    .locals 0

    return-void
.end method

.method public reportVideoPause()V
    .locals 0

    return-void
.end method

.method public reportVideoProgress(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_5

    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    :try_start_0
    div-long/2addr p1, p3

    long-to-int p1, p1

    iget p2, p0, Lcom/ubix/ssp/ad/d/h;->N:I

    mul-int/lit8 p3, p2, 0x19

    if-lt p1, p3, :cond_5

    const/4 p1, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object p3, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 p4, 0x1388

    invoke-virtual {p2, p3, p4}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-ne p2, p1, :cond_1

    iget-object p2, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object p3, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 p4, 0x13a1

    invoke-virtual {p2, p3, p4}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object p3, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 p4, 0x13ba

    invoke-virtual {p2, p3, p4}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x3

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object p3, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 p4, 0x13d3

    invoke-virtual {p2, p3, p4}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V

    goto :goto_0

    :cond_3
    const/4 p3, 0x4

    if-ne p2, p3, :cond_4

    iget-object p2, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object p3, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 p4, 0x13ec

    invoke-virtual {p2, p3, p4}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V

    :cond_4
    :goto_0
    iget p2, p0, Lcom/ubix/ssp/ad/d/h;->N:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/ubix/ssp/ad/d/h;->N:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public reportVideoResume()V
    .locals 0

    return-void
.end method

.method public reportVideoStart()V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/ubix/ssp/ad/d/h;->N:I

    if-nez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ubix/ssp/ad/d/h;->N:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->q:Ljava/lang/String;

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->z:Lcom/ubix/ssp/ad/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/d/f;->setAutoPlay(Z)V

    :cond_0
    return-void
.end method

.method public setCustomDownloadConfirmListener(Lcom/ubix/ssp/open/UBiXDownloadConfirmListener;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCustomDownloadConfirmListener nativeAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";UBiXDownloadConfirmListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    new-instance v2, Lcom/ubix/ssp/ad/d/h$b;

    invoke-direct {v2, p0, p1}, Lcom/ubix/ssp/ad/d/h$b;-><init>(Lcom/ubix/ssp/ad/d/h;Lcom/ubix/ssp/open/UBiXDownloadConfirmListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/g/c;)V

    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    new-instance v2, Lcom/ubix/ssp/ad/d/h$a;

    invoke-direct {v2, p0, p1}, Lcom/ubix/ssp/ad/d/h$a;-><init>(Lcom/ubix/ssp/ad/d/h;Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/e/s/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public setVideoListener(Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0, v1, p1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;)V

    return-void
.end method

.method public setVideoMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->z:Lcom/ubix/ssp/ad/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/d/f;->setVideoMute(Z)V

    :cond_0
    return-void
.end method

.method public shakeOff()V
    .locals 3

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/d/h;->isSupportCustomShake()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/d/h;->O:Z

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Z)V

    return-void
.end method

.method public shakeOn()V
    .locals 3

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/d/h;->isSupportCustomShake()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/d/h;->O:Z

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Z)V

    return-void
.end method

.method public startVideo()V
    .locals 0

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->r:Ljava/lang/String;

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->p:Ljava/lang/String;

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->v:Ljava/lang/String;

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h;->o:Ljava/lang/String;

    return-void
.end method

.method public winNotice(J)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h;->a:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;J)V

    :cond_0
    return-void
.end method
