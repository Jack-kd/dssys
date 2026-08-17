.class public Lcom/meishu/sdk/meishu_ad/v$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/a0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;Lcom/meishu/sdk/core/ad/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/nativ/f;

.field public final synthetic c:Lcom/meishu/sdk/core/ad/b;

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/reward/i;

.field public final synthetic e:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/core/ad/b;Lcom/meishu/sdk/meishu_ad/reward/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$f;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/v$f;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/v$f;->b:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/v$f;->c:Lcom/meishu/sdk/core/ad/b;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/v$f;->d:Lcom/meishu/sdk/meishu_ad/reward/i;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$f;->d:Lcom/meishu/sdk/meishu_ad/reward/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/reward/i;->b(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public success()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$f;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$f;->b:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->g:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoPath(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$f;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setPlayOnce(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$f;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setFromLogoVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$f;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setUseTransform(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$f;->c:Lcom/meishu/sdk/core/ad/b;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/b;->getVideoIsMute()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$f;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g()V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$f;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 43
    .line 44
    new-instance v1, Lcom/meishu/sdk/meishu_ad/v$f$a;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/meishu/sdk/meishu_ad/v$f$a;-><init>(Lcom/meishu/sdk/meishu_ad/v$f;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setOnPreparedListener(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$d;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
