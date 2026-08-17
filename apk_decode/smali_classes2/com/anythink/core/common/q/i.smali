.class public final synthetic Lcom/anythink/core/common/q/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/anythink/core/common/q/d;


# direct methods
.method public synthetic constructor <init>(Lcom/anythink/core/common/q/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/q/i;->b:Lcom/anythink/core/common/q/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/q/i;->b:Lcom/anythink/core/common/q/d;

    invoke-static {v0}, Lcom/anythink/core/common/q/d;->C(Lcom/anythink/core/common/q/d;)V

    return-void
.end method
