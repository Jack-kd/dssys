.class public final synthetic Lcom/fl/saas/adx/base/base/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/AdReRequestListener;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/base/BaseAPI;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/base/BaseAPI;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/b;->a:Lcom/fl/saas/adx/base/base/BaseAPI;

    return-void
.end method


# virtual methods
.method public final onReRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/b;->a:Lcom/fl/saas/adx/base/base/BaseAPI;

    invoke-static {v0}, Lcom/fl/saas/adx/base/base/BaseAPI;->a(Lcom/fl/saas/adx/base/base/BaseAPI;)V

    return-void
.end method
