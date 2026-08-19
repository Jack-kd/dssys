.class public final synthetic Lcom/fl/saas/adx/base/base/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/base/BaseAPI;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/base/BaseAPI;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/c;->b:Lcom/fl/saas/adx/base/base/BaseAPI;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/c;->b:Lcom/fl/saas/adx/base/base/BaseAPI;

    invoke-static {v0}, Lcom/fl/saas/adx/base/base/BaseAPI;->b(Lcom/fl/saas/adx/base/base/BaseAPI;)V

    return-void
.end method
