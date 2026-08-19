.class public final synthetic Lcom/anythink/core/common/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/anythink/core/common/q;

.field public final synthetic c:Lcom/anythink/core/e/b;


# direct methods
.method public synthetic constructor <init>(Lcom/anythink/core/common/q;Lcom/anythink/core/e/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/y;->b:Lcom/anythink/core/common/q;

    iput-object p2, p0, Lcom/anythink/core/common/y;->c:Lcom/anythink/core/e/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/y;->b:Lcom/anythink/core/common/q;

    iget-object v1, p0, Lcom/anythink/core/common/y;->c:Lcom/anythink/core/e/b;

    invoke-static {v0, v1}, Lcom/anythink/core/common/q;->a(Lcom/anythink/core/common/q;Lcom/anythink/core/e/b;)V

    return-void
.end method
