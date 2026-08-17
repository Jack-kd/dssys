.class public Lcom/ubix/ssp/ad/d/j;
.super Lcom/ubix/ssp/open/ParamsReview;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ubix/ssp/open/nativee/UBiXImage;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/ubix/ssp/open/nativee/UBiXVideo;

.field private m:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/ubix/ssp/ad/e/y/a/a;ZZZ)V
    .locals 10

    invoke-direct {p0}, Lcom/ubix/ssp/open/ParamsReview;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/j;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/j;->k:Ljava/util/ArrayList;

    new-instance v0, Lcom/ubix/ssp/open/nativee/UBiXVideo;

    invoke-direct {v0}, Lcom/ubix/ssp/open/nativee/UBiXVideo;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/j;->l:Lcom/ubix/ssp/open/nativee/UBiXVideo;

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/j;->m:Ljava/lang/String;

    if-eqz p3, :cond_0

    iget-object p3, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, p3, Lcom/ubix/ssp/ad/e/y/a/a$b;->o:Ljava/lang/String;

    iget-object v2, p3, Lcom/ubix/ssp/ad/e/y/a/a$b;->n:Ljava/lang/String;

    iget-object p3, p3, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p3, v0

    move-object v1, p3

    move-object v2, v1

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_4

    if-eqz p4, :cond_1

    iget-object p4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p4, p4, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object p4, p4, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->k:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    iget-object p4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p4, p4, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v0, p4, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->k:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object p4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p4, p4, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object p4, p4, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p4, p4, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object p4, p4, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p4, p4, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object p4, p4, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    iget-object p4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p4, p4, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v0, p4, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p4, p0, Lcom/ubix/ssp/ad/d/j;->l:Lcom/ubix/ssp/open/nativee/UBiXVideo;

    iget-object v4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->f:I

    invoke-virtual {p4, v4}, Lcom/ubix/ssp/open/nativee/UBiXVideo;->setWidth(I)V

    iget-object p4, p0, Lcom/ubix/ssp/ad/d/j;->l:Lcom/ubix/ssp/open/nativee/UBiXVideo;

    iget-object v4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->g:I

    invoke-virtual {p4, v4}, Lcom/ubix/ssp/open/nativee/UBiXVideo;->setHeight(I)V

    iget-object p4, p0, Lcom/ubix/ssp/ad/d/j;->l:Lcom/ubix/ssp/open/nativee/UBiXVideo;

    iget-object v4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-virtual {p4, v4}, Lcom/ubix/ssp/open/nativee/UBiXVideo;->setVideoUrl(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/ubix/ssp/ad/d/j;->l:Lcom/ubix/ssp/open/nativee/UBiXVideo;

    iget-object v4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-virtual {p4, v4}, Lcom/ubix/ssp/open/nativee/UBiXVideo;->setCoverUrl(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/ubix/ssp/ad/d/j;->l:Lcom/ubix/ssp/open/nativee/UBiXVideo;

    iget-object v4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->k:Ljava/lang/String;

    invoke-virtual {p4, v4}, Lcom/ubix/ssp/open/nativee/UBiXVideo;->setMaterialId(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/ubix/ssp/ad/d/j;->l:Lcom/ubix/ssp/open/nativee/UBiXVideo;

    iget-object v4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->d:F

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    float-to-long v4, v4

    invoke-virtual {p4, v4, v5}, Lcom/ubix/ssp/open/nativee/UBiXVideo;->setDuration(J)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/j;->a:Ljava/lang/String;

    goto/16 :goto_8

    :cond_4
    iget-object v0, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    const/16 v4, 0x7d5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v4, :cond_5

    move v0, v6

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    move v4, v5

    :goto_4
    if-nez v0, :cond_6

    move v7, v6

    goto :goto_5

    :cond_6
    iget-object v7, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    array-length v7, v7

    :goto_5
    if-ge v4, v7, :cond_9

    iget-object v7, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    aget-object v7, v7, v4

    if-eqz p4, :cond_7

    iget-object v8, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->f:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->f:Ljava/lang/String;

    :goto_6
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    iget-object v8, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    goto :goto_6

    :cond_8
    :goto_7
    new-instance v8, Lcom/ubix/ssp/open/nativee/UBiXImage;

    invoke-direct {v8}, Lcom/ubix/ssp/open/nativee/UBiXImage;-><init>()V

    iget-object v9, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/ubix/ssp/open/nativee/UBiXImage;->setUrl(Ljava/lang/String;)V

    iget v9, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->d:I

    invoke-virtual {v8, v9}, Lcom/ubix/ssp/open/nativee/UBiXImage;->setWidth(I)V

    iget v9, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->e:I

    invoke-virtual {v8, v9}, Lcom/ubix/ssp/open/nativee/UBiXImage;->setHeight(I)V

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->f:Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/ubix/ssp/open/nativee/UBiXImage;->setMaterialId(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ubix/ssp/ad/d/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_a

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iput-object p4, p0, Lcom/ubix/ssp/ad/d/j;->a:Ljava/lang/String;

    :cond_a
    :goto_8
    iget-object p4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->m:Ljava/lang/String;

    iput-object p4, p0, Lcom/ubix/ssp/ad/d/j;->m:Ljava/lang/String;

    iput-object v3, p0, Lcom/ubix/ssp/ad/d/j;->b:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/d/j;->c:Z

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p2, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/ubix/ssp/ad/d/j;->d:Ljava/lang/String;

    iget-object p2, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/ubix/ssp/ad/d/j;->e:Ljava/lang/String;

    iget-object p2, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/ubix/ssp/ad/d/j;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/j;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/j;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/ubix/ssp/ad/d/j;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubix/ssp/ad/d/j;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/ubix/ssp/ad/e/y/a/a;ZZZ)Lcom/ubix/ssp/open/ParamsReview;
    .locals 1

    new-instance v0, Lcom/ubix/ssp/ad/d/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ubix/ssp/ad/d/j;-><init>(Lcom/ubix/ssp/ad/e/y/a/a;ZZZ)V

    return-object v0
.end method

.method private getPR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/j;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/j;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getDeeplinkUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/j;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/j;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/j;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUBiXImageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ubix/ssp/open/nativee/UBiXImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/j;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUBiXVideo()Lcom/ubix/ssp/open/nativee/UBiXVideo;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/j;->l:Lcom/ubix/ssp/open/nativee/UBiXVideo;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/j;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/j;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/j;->c:Z

    return v0
.end method
