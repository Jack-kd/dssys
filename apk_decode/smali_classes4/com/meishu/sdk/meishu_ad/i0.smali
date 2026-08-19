.class public Lcom/meishu/sdk/meishu_ad/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/n0$c;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/f;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/nativ/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/nativ/f;ZLjava/util/List;Lcom/meishu/sdk/meishu_ad/nativ/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/i0;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/i0;->b:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/i0;->c:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/i0;->d:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onLoaded(Lcom/meishu/sdk/meishu_ad/n0;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/i0;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/d;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/i0;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v2, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->e:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/i0;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->desc:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v2, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->b:I

    .line 28
    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/i0;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 30
    .line 31
    iget-object v2, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v2, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->d:[Ljava/lang/String;

    .line 40
    .line 41
    iput-object p1, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->h:Lcom/meishu/sdk/meishu_ad/n0;

    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/i0;->b:Z

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/d;->a(Lcom/meishu/sdk/meishu_ad/nativ/d;Z)Z

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/i0;->c:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setMsAd(Lcom/meishu/sdk/meishu_ad/nativ/b;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/i0;->d:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 59
    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/i0;->c:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p1, v0}, Lcom/meishu/sdk/meishu_ad/m0;->onADLoaded(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method
