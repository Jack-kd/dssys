.class final Lcom/anythink/core/common/f$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/d/a;Lcom/anythink/core/common/f;Lcom/anythink/core/e/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/anythink/core/common/d/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/anythink/core/common/h/as;

.field final synthetic f:Lcom/anythink/core/e/m;

.field final synthetic g:Lcom/anythink/core/common/f;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f;[Lcom/anythink/core/common/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/e/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/core/common/f$7;->g:Lcom/anythink/core/common/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/core/common/f$7;->a:[Lcom/anythink/core/common/d/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/core/common/f$7;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/core/common/f$7;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/anythink/core/common/f$7;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/anythink/core/common/f$7;->e:Lcom/anythink/core/common/h/as;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/anythink/core/common/f$7;->f:Lcom/anythink/core/e/m;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f$7;->a:[Lcom/anythink/core/common/d/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/anythink/core/common/f$7;->b:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/anythink/core/common/f$7;->c:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v5, p0, Lcom/anythink/core/common/f$7;->d:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/core/common/f$7;->e:Lcom/anythink/core/common/h/as;

    .line 15
    .line 16
    iget-object v6, v0, Lcom/anythink/core/common/h/as;->a:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v7, p0, Lcom/anythink/core/common/f$7;->f:Lcom/anythink/core/e/m;

    .line 19
    .line 20
    const-string v10, "0"

    .line 21
    .line 22
    const-string v11, ""

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const-string v9, "0"

    .line 27
    .line 28
    invoke-static/range {v2 .. v11}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/n;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/anythink/core/common/f$7;->a:[Lcom/anythink/core/common/d/a;

    .line 32
    .line 33
    aget-object v0, v0, v1

    .line 34
    .line 35
    invoke-interface {v0, p1}, Lcom/anythink/core/common/d/a;->onAdLoadFail(Lcom/anythink/core/api/AdError;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final onAdLoaded()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f$7;->a:[Lcom/anythink/core/common/d/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/anythink/core/common/f$7;->b:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/anythink/core/common/f$7;->c:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v5, p0, Lcom/anythink/core/common/f$7;->d:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/core/common/f$7;->e:Lcom/anythink/core/common/h/as;

    .line 15
    .line 16
    iget-object v6, v0, Lcom/anythink/core/common/h/as;->a:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v7, p0, Lcom/anythink/core/common/f$7;->f:Lcom/anythink/core/e/m;

    .line 19
    .line 20
    const-string v10, "1"

    .line 21
    .line 22
    const-string v11, ""

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v8, 0x1

    .line 26
    const-string v9, "0"

    .line 27
    .line 28
    invoke-static/range {v2 .. v11}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/n;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/anythink/core/common/f$7;->a:[Lcom/anythink/core/common/d/a;

    .line 32
    .line 33
    aget-object v0, v0, v1

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/anythink/core/common/d/a;->onAdLoaded()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
