.class public final synthetic Lcom/anythink/core/common/m/d/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/anythink/core/common/m/d/a/d;

.field public final synthetic c:Lcom/anythink/core/common/m/d/f;

.field public final synthetic d:Lcom/anythink/core/common/m/d/f$a;


# direct methods
.method public synthetic constructor <init>(Lcom/anythink/core/common/m/d/a/d;Lcom/anythink/core/common/m/d/f;Lcom/anythink/core/common/m/d/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/m/d/a/e;->b:Lcom/anythink/core/common/m/d/a/d;

    iput-object p2, p0, Lcom/anythink/core/common/m/d/a/e;->c:Lcom/anythink/core/common/m/d/f;

    iput-object p3, p0, Lcom/anythink/core/common/m/d/a/e;->d:Lcom/anythink/core/common/m/d/f$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/m/d/a/e;->b:Lcom/anythink/core/common/m/d/a/d;

    iget-object v1, p0, Lcom/anythink/core/common/m/d/a/e;->c:Lcom/anythink/core/common/m/d/f;

    iget-object v2, p0, Lcom/anythink/core/common/m/d/a/e;->d:Lcom/anythink/core/common/m/d/f$a;

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/m/d/a/d;->a(Lcom/anythink/core/common/m/d/a/d;Lcom/anythink/core/common/m/d/f;Lcom/anythink/core/common/m/d/f$a;)V

    return-void
.end method
