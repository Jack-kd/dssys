.class final Lcom/fl/saas/adx/api/FLConfig$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/api/FLConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/fl/saas/adx/api/FLConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fl/saas/adx/api/FLConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/api/FLConfig;-><init>(Lcom/fl/saas/adx/api/FLConfig$1;)V

    sput-object v0, Lcom/fl/saas/adx/api/FLConfig$Holder;->INSTANCE:Lcom/fl/saas/adx/api/FLConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/fl/saas/adx/api/FLConfig;
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/api/FLConfig$Holder;->INSTANCE:Lcom/fl/saas/adx/api/FLConfig;

    return-object v0
.end method
