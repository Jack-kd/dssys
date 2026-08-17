.class public final enum Lcom/fl/saas/adx/base/innterNative/ActionView$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/base/innterNative/ActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fl/saas/adx/base/innterNative/ActionView$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

.field public static final enum Banner:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

.field public static final enum Interstitial:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

.field public static final enum Spread:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

.field public static final enum Template:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;


# direct methods
.method private static synthetic $values()[Lcom/fl/saas/adx/base/innterNative/ActionView$Type;
    .locals 4

    sget-object v0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Spread:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    sget-object v1, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Interstitial:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    sget-object v2, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Template:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    sget-object v3, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Banner:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    filled-new-array {v0, v1, v2, v3}, [Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    const-string v1, "Spread"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Spread:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    const-string v1, "Interstitial"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Interstitial:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    const-string v1, "Template"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Template:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    const-string v1, "Banner"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Banner:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    invoke-static {}, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->$values()[Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    move-result-object v0

    sput-object v0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->$VALUES:[Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fl/saas/adx/base/innterNative/ActionView$Type;
    .locals 1

    const-class v0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    return-object p0
.end method

.method public static values()[Lcom/fl/saas/adx/base/innterNative/ActionView$Type;
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->$VALUES:[Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    invoke-virtual {v0}, [Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    return-object v0
.end method
