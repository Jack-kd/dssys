.class public final enum Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;",
        "",
        "raw",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getRaw",
        "()I",
        "PLATFORM_ENCODED",
        "JSON_ENCODED",
        "UNEXPECTED_STRING",
        "Companion",
        "shared_preferences_android_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/a;

.field private static final synthetic $VALUES:[Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

.field public static final Companion:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum JSON_ENCODED:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

.field public static final enum PLATFORM_ENCODED:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

.field public static final enum UNEXPECTED_STRING:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;


# instance fields
.field private final raw:I


# direct methods
.method private static final synthetic $values()[Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
    .locals 3

    sget-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->PLATFORM_ENCODED:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    sget-object v1, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->JSON_ENCODED:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    sget-object v2, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->UNEXPECTED_STRING:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    filled-new-array {v0, v1, v2}, [Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 2
    .line 3
    const-string v1, "PLATFORM_ENCODED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->PLATFORM_ENCODED:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 10
    .line 11
    new-instance v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 12
    .line 13
    const-string v1, "JSON_ENCODED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->JSON_ENCODED:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 20
    .line 21
    new-instance v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 22
    .line 23
    const-string v1, "UNEXPECTED_STRING"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->UNEXPECTED_STRING:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 30
    .line 31
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->$values()[Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->$VALUES:[Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/enums/b;->a([Ljava/lang/Enum;)Lkotlin/enums/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->$ENTRIES:Lkotlin/enums/a;

    .line 42
    .line 43
    new-instance v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v1}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->Companion:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;

    .line 50
    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->raw:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->$ENTRIES:Lkotlin/enums/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
    .locals 1

    const-class v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    return-object p0
.end method

.method public static values()[Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
    .locals 1

    sget-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->$VALUES:[Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    return-object v0
.end method


# virtual methods
.method public final getRaw()I
    .locals 1

    .line 1
    iget v0, p0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->raw:I

    .line 2
    .line 3
    return v0
.end method
