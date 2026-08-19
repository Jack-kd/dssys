.class public final synthetic Lcom/fl/saas/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/b1;


# instance fields
.field public final synthetic a:Lcom/fl/saas/e;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/d2;->a:Lcom/fl/saas/e;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/d2;->a:Lcom/fl/saas/e;

    invoke-virtual {v0}, Lcom/fl/saas/n;->getActivityValid()Lcom/fl/saas/p0;

    move-result-object v0

    return-object v0
.end method
