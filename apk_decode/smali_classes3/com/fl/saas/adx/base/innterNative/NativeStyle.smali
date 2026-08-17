.class public final enum Lcom/fl/saas/adx/base/innterNative/NativeStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fl/saas/adx/base/innterNative/NativeStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fl/saas/adx/base/innterNative/NativeStyle;

.field public static final enum EXPRESS:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

.field public static final enum NATIVE:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

.field public static final enum NONE:Lcom/fl/saas/adx/base/innterNative/NativeStyle;


# direct methods
.method private static synthetic $values()[Lcom/fl/saas/adx/base/innterNative/NativeStyle;
    .locals 3

    sget-object v0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->NONE:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    sget-object v1, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->EXPRESS:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    sget-object v2, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->NATIVE:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    filled-new-array {v0, v1, v2}, [Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fl/saas/adx/base/innterNative/NativeStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->NONE:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    const-string v1, "EXPRESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/fl/saas/adx/base/innterNative/NativeStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->EXPRESS:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    const-string v1, "NATIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/fl/saas/adx/base/innterNative/NativeStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->NATIVE:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    invoke-static {}, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->$values()[Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    move-result-object v0

    sput-object v0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->$VALUES:[Lcom/fl/saas/adx/base/innterNative/NativeStyle;

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

.method public static create(I)Lcom/fl/saas/adx/base/innterNative/NativeStyle;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->NONE:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    return-object p0

    :cond_0
    sget-object p0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->NATIVE:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    return-object p0

    :cond_1
    sget-object p0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->EXPRESS:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fl/saas/adx/base/innterNative/NativeStyle;
    .locals 1

    const-class v0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    return-object p0
.end method

.method public static values()[Lcom/fl/saas/adx/base/innterNative/NativeStyle;
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->$VALUES:[Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    invoke-virtual {v0}, [Lcom/fl/saas/adx/base/innterNative/NativeStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    return-object v0
.end method
