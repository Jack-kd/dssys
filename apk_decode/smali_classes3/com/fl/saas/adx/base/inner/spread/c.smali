.class public final synthetic Lcom/fl/saas/adx/base/inner/spread/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/c;->b:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/c;->b:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->h(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V

    return-void
.end method
