.class public final synthetic Lcom/fl/saas/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/f;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/n2;->b:Lcom/fl/saas/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/n2;->b:Lcom/fl/saas/f;

    invoke-static {v0}, Lcom/fl/saas/f;->h(Lcom/fl/saas/f;)V

    return-void
.end method
