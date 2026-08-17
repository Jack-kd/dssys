.class final Lcom/anythink/core/common/n/b/ae$1;
.super Lcom/anythink/core/common/n/b/ae;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/b/ae;->a(Lcom/anythink/core/common/n/b/x;Lcom/anythink/core/common/n/c/f;)Lcom/anythink/core/common/n/b/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/n/b/x;

.field final synthetic b:Lcom/anythink/core/common/n/c/f;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/n/b/x;Lcom/anythink/core/common/n/c/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/core/common/n/b/ae$1;->a:Lcom/anythink/core/common/n/b/x;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/core/common/n/b/ae$1;->b:Lcom/anythink/core/common/n/c/f;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/anythink/core/common/n/b/ae;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lcom/anythink/core/common/n/b/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/ae$1;->a:Lcom/anythink/core/common/n/b/x;

    return-object v0
.end method

.method public final a(Lcom/anythink/core/common/n/c/d;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/anythink/core/common/n/b/ae$1;->b:Lcom/anythink/core/common/n/c/f;

    invoke-interface {p1, v0}, Lcom/anythink/core/common/n/c/d;->d(Lcom/anythink/core/common/n/c/f;)Lcom/anythink/core/common/n/c/d;

    return-void
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/ae$1;->b:Lcom/anythink/core/common/n/c/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/core/common/n/c/f;->j()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    return-wide v0
.end method
