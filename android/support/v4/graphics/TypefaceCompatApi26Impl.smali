.class public Landroid/support/v4/graphics/TypefaceCompatApi26Impl;
.super Landroid/support/v4/graphics/TypefaceCompatApi21Impl;
.source "TypefaceCompatApi26Impl.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ABORT_CREATION_METHOD:Ljava/lang/String; = "abortCreation"

.field private static final ADD_FONT_FROM_ASSET_MANAGER_METHOD:Ljava/lang/String; = "addFontFromAssetManager"

.field private static final ADD_FONT_FROM_BUFFER_METHOD:Ljava/lang/String; = "addFontFromBuffer"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final DEFAULT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final FREEZE_METHOD:Ljava/lang/String; = "freeze"

.field private static final RESOLVE_BY_FONT_TABLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi26Impl"


# instance fields
.field protected final mAbortCreation:Ljava/lang/reflect/Method;

.field protected final mAddFontFromAssetManager:Ljava/lang/reflect/Method;

.field protected final mAddFontFromBuffer:Ljava/lang/reflect/Method;

.field protected final mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field protected final mFontFamily:Ljava/lang/Class;

.field protected final mFontFamilyCtor:Ljava/lang/reflect/Constructor;

.field protected final mFreeze:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 75
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;-><init>()V

    const/4 v0, 0x0

    .line 84
    :try_start_4
    invoke-virtual {p0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->obtainFontFamily()Ljava/lang/Class;

    move-result-object v1

    .line 85
    invoke-virtual {p0, v1}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->obtainFontFamilyCtor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 86
    invoke-virtual {p0, v1}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->obtainAddFontFromAssetManagerMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 87
    invoke-virtual {p0, v1}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->obtainAddFontFromBufferMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 88
    invoke-virtual {p0, v1}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->obtainFreezeMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 89
    invoke-virtual {p0, v1}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->obtainAbortCreationMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 90
    invoke-virtual {p0, v1}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->obtainCreateFromFamiliesWithDefaultMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_20} :catch_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_20} :catch_22

    move-object v0, v1

    goto :goto_47

    :catch_22
    move-exception v1

    const-string v2, "TypefaceCompatApi26Impl"

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to collect necessary methods for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    .line 102
    :goto_47
    iput-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mFontFamily:Ljava/lang/Class;

    .line 103
    iput-object v2, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mFontFamilyCtor:Ljava/lang/reflect/Constructor;

    .line 104
    iput-object v3, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    .line 105
    iput-object v4, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAddFontFromBuffer:Ljava/lang/reflect/Method;

    .line 106
    iput-object v5, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mFreeze:Ljava/lang/reflect/Method;

    .line 107
    iput-object v6, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAbortCreation:Ljava/lang/reflect/Method;

    .line 108
    iput-object v7, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    return-void
.end method

.method private abortCreation(Ljava/lang/Object;)V
    .registers 4

    .line 196
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAbortCreation:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z
    .registers 11
    .param p7  # [Landroid/graphics/fonts/FontVariationAxis;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    const/4 p1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x5

    .line 142
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x7

    aput-object p7, v1, p1

    .line 140
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_40} :catch_41
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_40} :catch_41

    return p1

    :catch_41
    move-exception p1

    .line 145
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private addFontFromBuffer(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    .registers 9

    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAddFontFromBuffer:Ljava/lang/reflect/Method;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    .line 157
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x2

    const/4 p3, 0x0

    aput-object p3, v1, p2

    const/4 p2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    .line 156
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 158
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2b} :catch_2c

    return p1

    :catch_2c
    move-exception p1

    .line 160
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private freeze(Ljava/lang/Object;)Z
    .registers 4

    .line 184
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mFreeze:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_f} :catch_10

    return p1

    :catch_10
    move-exception p1

    .line 187
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private isFontFamilyPrivateAPIAvailable()Z
    .registers 3

    .line 115
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    if-nez v0, :cond_b

    const-string v0, "TypefaceCompatApi26Impl"

    const-string v1, "Unable to collect necessary private methods. Fallback to legacy implementation."

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_b
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private newFamily()Ljava/lang/Object;
    .registers 3

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 7

    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mFontFamily:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 171
    invoke-static {v0, v2, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 172
    iget-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const/4 v0, -0x1

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 172
    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_27} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    move-exception p1

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 15

    .line 206
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    .line 209
    :cond_b
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object p3

    .line 210
    invoke-virtual {p2}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object p2

    array-length p4, p2

    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_16
    const/4 v9, 0x0

    if-ge v8, p4, :cond_43

    aget-object v0, p2, v8

    .line 211
    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v6

    .line 213
    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 211
    invoke-direct/range {v0 .. v7}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 214
    invoke-direct {p0, p3}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    return-object v9

    :cond_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 218
    :cond_43
    invoke-direct {p0, p3}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    return-object v9

    .line 221
    :cond_4a
    invoke-virtual {p0, p3}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 16
    .param p2  # Landroid/os/CancellationSignal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 228
    array-length v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_6

    return-object v2

    .line 231
    :cond_6
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v0

    if-nez v0, :cond_64

    .line 234
    invoke-virtual {p0, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object p3

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 237
    :try_start_14
    invoke-virtual {p3}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object p4

    const-string v0, "r"

    invoke-virtual {p1, p4, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-nez p1, :cond_26

    if-eqz p1, :cond_25

    .line 245
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_25} :catch_63

    :cond_25
    return-object v2

    .line 241
    :cond_26
    :try_start_26
    new-instance p2, Landroid/graphics/Typeface$Builder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    .line 242
    invoke-virtual {p3}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object p2

    .line 243
    invoke-virtual {p3}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    move-result-object p2

    .line 244
    invoke-virtual {p2}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_43} :catch_4c
    .catchall {:try_start_26 .. :try_end_43} :catchall_49

    if-eqz p1, :cond_48

    .line 245
    :try_start_45
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_63

    :cond_48
    return-object p2

    :catchall_49
    move-exception p2

    move-object p3, v2

    goto :goto_52

    :catch_4c
    move-exception p2

    .line 236
    :try_start_4d
    throw p2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p3

    move-object v10, p3

    move-object p3, p2

    move-object p2, v10

    :goto_52
    if-eqz p1, :cond_62

    if-eqz p3, :cond_5f

    .line 245
    :try_start_56
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_5a
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_63

    goto :goto_62

    :catch_5a
    move-exception p1

    :try_start_5b
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_62

    :cond_5f
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_62
    :goto_62
    throw p2
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_63} :catch_63

    :catch_63
    return-object v2

    .line 249
    :cond_64
    invoke-static {p1, p3, p2}, Landroid/support/v4/provider/FontsContractCompat;->prepareFontData(Landroid/content/Context;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object p1

    .line 251
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object p2

    .line 253
    array-length v0, p3

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_6f
    if-ge v9, v0, :cond_9c

    aget-object v4, p3, v9

    .line 254
    invoke-virtual {v4}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    if-nez v5, :cond_80

    goto :goto_99

    .line 259
    :cond_80
    invoke-virtual {v4}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v6

    invoke-virtual {v4}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v7

    invoke-virtual {v4}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v8

    move-object v3, p0

    move-object v4, p2

    .line 258
    invoke-direct/range {v3 .. v8}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->addFontFromBuffer(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z

    move-result v3

    if-nez v3, :cond_98

    .line 261
    invoke-direct {p0, p2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    return-object v2

    :cond_98
    const/4 v3, 0x1

    :goto_99
    add-int/lit8 v9, v9, 0x1

    goto :goto_6f

    :cond_9c
    if-nez v3, :cond_a2

    .line 267
    invoke-direct {p0, p2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    return-object v2

    .line 270
    :cond_a2
    invoke-direct {p0, p2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a9

    return-object v2

    .line 273
    :cond_a9
    invoke-virtual {p0, p2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 274
    invoke-static {p1, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 14
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 284
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 285
    invoke-super/range {p0 .. p5}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    .line 287
    :cond_b
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object p2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    .line 288
    invoke-direct/range {v0 .. v7}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_22

    .line 291
    invoke-direct {p0, p2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    return-object p3

    .line 294
    :cond_22
    invoke-direct {p0, p2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return-object p3

    .line 297
    :cond_29
    invoke-virtual {p0, p2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method protected obtainAbortCreationMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4

    const-string v0, "abortCreation"

    const/4 v1, 0x0

    .line 331
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method protected obtainAddFontFromAssetManagerMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6

    const-string v0, "addFontFromAssetManager"

    const/16 v1, 0x8

    .line 315
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/res/AssetManager;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-class v2, [Landroid/graphics/fonts/FontVariationAxis;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method protected obtainAddFontFromBufferMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6

    const-string v0, "addFontFromBuffer"

    const/4 v1, 0x5

    .line 321
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, [Landroid/graphics/fonts/FontVariationAxis;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method protected obtainCreateFromFamiliesWithDefaultMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7

    const/4 v0, 0x1

    .line 336
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 337
    const-class v1, Landroid/graphics/Typeface;

    const-string v2, "createFromFamiliesWithDefault"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    .line 338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, v3, v0

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 337
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 339
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p1
.end method

.method protected obtainFontFamily()Ljava/lang/Class;
    .registers 2

    const-string v0, "android.graphics.FontFamily"

    .line 306
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected obtainFontFamilyCtor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 3

    const/4 v0, 0x0

    .line 310
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1
.end method

.method protected obtainFreezeMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4

    const-string v0, "freeze"

    const/4 v1, 0x0

    .line 327
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method
