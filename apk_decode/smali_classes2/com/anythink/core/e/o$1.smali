.class final Lcom/anythink/core/e/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/e/o;->a(Lcom/anythink/core/e/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/e/o$b;IZLcom/anythink/core/api/ATAdRequest;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Lcom/anythink/core/e/m;

.field final synthetic c:Lcom/anythink/core/e/o$a;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/anythink/core/common/h/bo;

.field final synthetic f:I

.field final synthetic g:Lcom/anythink/core/e/o;


# direct methods
.method public constructor <init>(Lcom/anythink/core/e/o;[ZLcom/anythink/core/e/m;Lcom/anythink/core/e/o$a;Ljava/lang/String;Lcom/anythink/core/common/h/bo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/core/e/o$1;->g:Lcom/anythink/core/e/o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/core/e/o$1;->a:[Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/core/e/o$1;->b:Lcom/anythink/core/e/m;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/core/e/o$1;->c:Lcom/anythink/core/e/o$a;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/anythink/core/e/o$1;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/anythink/core/e/o$1;->e:Lcom/anythink/core/common/h/bo;

    .line 12
    .line 13
    iput p7, p0, Lcom/anythink/core/e/o$1;->f:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/anythink/core/e/o$1;->a:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    aput-boolean v2, v0, v1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/anythink/core/e/o$1;->b:Lcom/anythink/core/e/m;

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lcom/anythink/core/e/m;->b(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/anythink/core/e/o$1;->c:Lcom/anythink/core/e/o$a;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/anythink/core/e/o$1;->b:Lcom/anythink/core/e/m;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/anythink/core/e/o$a;->a(Lcom/anythink/core/e/m;)V

    .line 17
    .line 18
    .line 19
    iget-object v6, p0, Lcom/anythink/core/e/o$1;->d:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/anythink/core/e/o$1;->e:Lcom/anythink/core/common/h/bo;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/anythink/core/common/h/bo;->k()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v10

    .line 27
    iget v11, p0, Lcom/anythink/core/e/o$1;->f:I

    .line 28
    .line 29
    const-string v2, "placement"

    .line 30
    .line 31
    const-string v3, ""

    .line 32
    .line 33
    const-string v4, "strategy timeout"

    .line 34
    .line 35
    const-string v5, ""

    .line 36
    .line 37
    const-string v7, ""

    .line 38
    .line 39
    const-string v8, ""

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    invoke-static/range {v2 .. v11}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATAdRequest;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
