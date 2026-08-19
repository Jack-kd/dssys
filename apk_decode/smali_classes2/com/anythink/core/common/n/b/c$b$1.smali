.class final Lcom/anythink/core/common/n/b/c$b$1;
.super Lcom/anythink/core/common/n/c/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/b/c$b;-><init>(Lcom/anythink/core/common/n/b/a/a/d$c;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/n/b/a/a/d$c;

.field final synthetic b:Lcom/anythink/core/common/n/b/c$b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/n/b/c$b;Lcom/anythink/core/common/n/c/w;Lcom/anythink/core/common/n/b/a/a/d$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/core/common/n/b/c$b$1;->b:Lcom/anythink/core/common/n/b/c$b;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/anythink/core/common/n/b/c$b$1;->a:Lcom/anythink/core/common/n/b/a/a/d$c;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/anythink/core/common/n/c/i;-><init>(Lcom/anythink/core/common/n/c/w;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/c$b$1;->a:Lcom/anythink/core/common/n/b/a/a/d$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/core/common/n/b/a/a/d$c;->close()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/anythink/core/common/n/c/i;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
