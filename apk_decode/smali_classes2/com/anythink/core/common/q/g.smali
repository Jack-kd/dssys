.class public final synthetic Lcom/anythink/core/common/q/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/anythink/core/common/q/c;


# direct methods
.method public synthetic constructor <init>(Lcom/anythink/core/common/q/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/q/g;->b:Lcom/anythink/core/common/q/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/q/g;->b:Lcom/anythink/core/common/q/c;

    invoke-static {v0}, Lcom/anythink/core/common/q/c;->C(Lcom/anythink/core/common/q/c;)V

    return-void
.end method
