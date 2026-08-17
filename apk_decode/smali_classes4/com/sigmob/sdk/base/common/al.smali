.class public Lcom/sigmob/sdk/base/common/al;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/sigmob/windad/WindAdRequest;

.field private f:Lcom/sigmob/sdk/base/models/LoadAdRequest;

.field private g:Lcom/sigmob/sdk/base/common/ad$a;

.field private h:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/al;
    .locals 1

    .line 5
    new-instance v0, Lcom/sigmob/sdk/base/common/al;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/al;-><init>()V

    iput-object p0, v0, Lcom/sigmob/sdk/base/common/al;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/common/ad$a;)Lcom/sigmob/sdk/base/common/al;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/al;->g:Lcom/sigmob/sdk/base/common/ad$a;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/common/al;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/al;->h:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)Lcom/sigmob/sdk/base/common/al;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/al;->f:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    return-object p0
.end method

.method public a(Lcom/sigmob/windad/WindAdRequest;)Lcom/sigmob/sdk/base/common/al;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/al;->e:Lcom/sigmob/windad/WindAdRequest;

    return-object p0
.end method

.method public a()V
    .locals 4

    .line 6
    new-instance v0, Lcom/sigmob/sdk/base/mta/PointFiveEntity;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/mta/PointFiveEntity;-><init>()V

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/al;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/al;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/al;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/al;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/al;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/al;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/al;->e:Lcom/sigmob/windad/WindAdRequest;

    invoke-static {v1, v2, v0, v3}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;Lcom/sigmob/windad/WindAdRequest;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/al;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/al;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/al;->f:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {v1, v2, v0, v3}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/al;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/al;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/al;->h:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v1, v2, v3, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/mta/PointEntitySigmob;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/al;->g:Lcom/sigmob/sdk/base/common/ad$a;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/al;->g:Lcom/sigmob/sdk/base/common/ad$a;

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/base/common/ad$a;->onAddExtra(Ljava/lang/Object;)V

    :cond_1
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/mta/PointEntitySigmob;)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/al;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/al;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/al;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/al;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/al;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/al;->d:Ljava/lang/String;

    return-object p0
.end method
