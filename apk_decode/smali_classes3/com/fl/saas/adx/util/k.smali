.class public final synthetic Lcom/fl/saas/adx/util/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/util/FLImageLoader;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/util/k;->b:Lcom/fl/saas/adx/util/FLImageLoader;

    iput-object p2, p0, Lcom/fl/saas/adx/util/k;->c:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/fl/saas/adx/util/k;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/fl/saas/adx/util/k;->e:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/util/k;->b:Lcom/fl/saas/adx/util/FLImageLoader;

    iget-object v1, p0, Lcom/fl/saas/adx/util/k;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/fl/saas/adx/util/k;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/fl/saas/adx/util/k;->e:Ljava/io/File;

    invoke-static {v0, v1, v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->h(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
