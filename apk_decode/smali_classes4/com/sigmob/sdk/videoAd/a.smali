.class public Lcom/sigmob/sdk/videoAd/a;
.super Lcom/sigmob/sdk/base/common/i;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected l:Z

.field protected m:F

.field protected n:I

.field protected o:I

.field protected p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private t:Lcom/sigmob/sdk/videoAd/c;

.field private u:I

.field private v:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/i;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->m:F

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->n:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->o:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->p:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sigmob/sdk/videoAd/a;->q:I

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->s:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->l:Z

    return-void
.end method

.method private c(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/a;->l:Z

    return-void
.end method

.method public static d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/videoAd/a;
    .locals 8

    .line 1
    new-instance v0, Lcom/sigmob/sdk/videoAd/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/videoAd/a;-><init>()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->c(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->d(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/sigmob/sdk/base/common/n;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v4

    if-eq v1, v4, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/videoAd/a;->b(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/o;->w()Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/videoAd/c;

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;->title:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v2, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;->body_text:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;->cancel_button_text:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;->close_button_text:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v6, v7, v2}, Lcom/sigmob/sdk/videoAd/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sigmob/sdk/base/k;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sigmob/sdk/base/k;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sigmob/sdk/base/k;->n()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sigmob/sdk/base/k;->m()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/sigmob/sdk/videoAd/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/videoAd/a;->a(Lcom/sigmob/sdk/videoAd/c;)V

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/videoAd/a;->a(Z)V

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->finished:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/videoAd/a;->a(F)V

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->end_time:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->c(I)V

    :cond_3
    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/i;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-object v0
.end method

.method public static e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/videoAd/f;
    .locals 13

    .line 2
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v0

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/sigmob/sdk/base/views/n$a;->b:Lcom/sigmob/sdk/base/views/n$a;

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/sigmob/sdk/base/views/n$a;->c:Lcom/sigmob/sdk/base/views/n$a;

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->resourcePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result v9

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeResourceType()Lcom/sigmob/sdk/base/views/n$b;

    move-result-object v4

    new-instance v2, Lcom/sigmob/sdk/base/views/n;

    const/16 v6, 0x2d0

    const/16 v7, 0x400

    invoke-direct/range {v2 .. v7}, Lcom/sigmob/sdk/base/views/n;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/views/n$b;Lcom/sigmob/sdk/base/views/n$a;II)V

    new-instance v6, Lcom/sigmob/sdk/videoAd/f;

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->landing_page:Ljava/lang/String;

    iget-object v11, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    const/16 v7, 0x300

    const/16 v8, 0x400

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Lcom/sigmob/sdk/videoAd/f;-><init>(IIILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/views/n;)V

    return-object v6
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->m:F

    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 0

    .line 2
    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 3
    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Lcom/sigmob/sdk/videoAd/c;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/a;->t:Lcom/sigmob/sdk/videoAd/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/a;->s:Z

    return-void
.end method

.method public a(ZIILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 7
    return-void
.end method

.method public b(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->u:I

    if-eqz v0, :cond_1

    mul-int/lit16 v1, v0, 0x3e8

    if-le v1, p1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_1
    :goto_0
    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;I)V
    .locals 0

    .line 3
    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public b(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 4
    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public b(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 5
    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/a;->p:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->u:I

    return-void
.end method

.method public c(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 2
    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 3
    if-nez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->n:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 4
    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i;->g:Ljava/lang/String;

    return-void
.end method

.method public e(I)I
    .locals 2

    .line 1
    int-to-float p1, p1

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->o:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 4
    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i;->h:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->q:I

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->u:I

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->s:Z

    return v0
.end method

.method public n()F
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->m:F

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->n:I

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->p:Z

    return v0
.end method

.method public q()Lcom/sigmob/sdk/videoAd/c;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->t:Lcom/sigmob/sdk/videoAd/c;

    return-object v0
.end method

.method public r()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->l:Z

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->q:I

    return v0
.end method
