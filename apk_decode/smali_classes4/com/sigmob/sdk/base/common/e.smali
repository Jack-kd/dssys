.class public Lcom/sigmob/sdk/base/common/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/h$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/sigmob/sdk/base/common/h$b;

.field private final d:Lcom/sigmob/sdk/base/models/LoadAdRequest;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/sigmob/sdk/base/common/h$b;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;",
            "Lcom/sigmob/sdk/base/common/h$b;",
            "Lcom/sigmob/sdk/base/models/LoadAdRequest;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AdListCacheManger"

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/e;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/e;->c:Lcom/sigmob/sdk/base/common/h$b;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/e;->d:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->c:Lcom/sigmob/sdk/base/common/h$b;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->c:Lcom/sigmob/sdk/base/common/h$b;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/common/h$b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/e;->c:Lcom/sigmob/sdk/base/common/h$b;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/e;->c:Lcom/sigmob/sdk/base/common/h$b;

    invoke-interface {p1, v0, p2}, Lcom/sigmob/sdk/base/common/h$b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/e;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    return-void

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "load_success"

    goto :goto_0

    :cond_3
    const-string v0, "load_failure"

    :goto_0
    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "1"

    :goto_1
    move-object v1, p2

    goto :goto_2

    :cond_4
    const-string p2, "0"

    goto :goto_1

    :goto_2
    iget-object v4, p0, Lcom/sigmob/sdk/base/common/e;->d:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    const/4 v5, 0x0

    const-string v0, "loadend"

    const/4 v3, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public a(Z)Z
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/e;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/h$b;)V

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/e;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/e;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v2

    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/e;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setCatchVideo(Z)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/h$b;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/e;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    :cond_3
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/e;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
