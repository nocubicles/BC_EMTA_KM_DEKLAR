codeunit 75639 "VAT Insert VAT Descriptions"
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    var
        VATDescription: Record "VAT Description";
        VATDescriptionList: Dictionary of [Text[30], Text[250]];
    begin
        InsertVATDescriptions();
    end;

    local procedure InsertVATDescriptions()
    var
        VATDescription: Record "VAT Description";
        VATDescriptionList: Dictionary of [Text[30], Text[250]];
        Box: Text[30];
        Description: Text[250];
    begin
        VATDescriptionList := GetVATDescriptions();

        foreach Box in VATDescriptionList.Keys() do begin
            if not VATDescription.Get(Box) then begin
                VATDescription.Init();
                VATDescription.Validate("Box No.", Box);
                VATDescription.Validate(Description, VATDescriptionList.Get(Box));
                VATDescription.Insert();
            end;
        end;
    end;

    local procedure GetVATDescriptions(): Dictionary of [Text[30], Text[250]]
    var
        VATDescriptionList: Dictionary of [Text[30], Text[250]];
    begin
        VATDescriptionList.Add('1', '22% määraga maksustatavad toimingud ja tehingud');
        VATDescriptionList.Add('1¹', '20% määraga maksustatavad toimingud ja tehingud');
        VATDescriptionList.Add('2', '9% määraga maksustatavad toimingud ja tehingud');
        VATDescriptionList.Add('2¹', '5% määraga maksustatavad toimingud ja tehingud');
        VATDescriptionList.Add('3', '0% määraga maksustatavad toimingud ja tehingud');
        VATDescriptionList.Add('3.1', '1) kauba ühendusesisene käive ja teise liikmesriigi maksukohustuslasele / piiratud maksukohustuslasele osutatud teenuste käive kokku, sh');
        VATDescriptionList.Add('3.1.1', 'kauba ühendusesisene käive');
        VATDescriptionList.Add('3.2', '2) kauba ekspor, sh');
        VATDescriptionList.Add('3.2.1', 'käibemaksutagastusega müük reisijale ');
        VATDescriptionList.Add('4', 'Käibemaks kokku (22% lahtrist 1 + 20% lahtrist 1¹ + 9% lahtrist 2 + 5% lahtrist 2¹)');
        VATDescriptionList.Add('4¹', 'Impordilt tasumisele kuuluv käibemaks');
        VATDescriptionList.Add('5', 'Kokku sisendkäibemaksu summa, mis on seadusega lubatud maha arvata, sh');
        VATDescriptionList.Add('5.1', '1) impordilt tasutud või tasumisele kuuluv käibemaks');
        VATDescriptionList.Add('5.2', '2) põhivara soetamiselt tasutud või tasumisele kuuluv käibemaks');
        VATDescriptionList.Add('5.3', '3) ettevõtluses (100%) kasutatava sõiduauto soetamiselt ja sellise sõiduauto tarbeks kaupade soetamiselt ja teenuste saamiselt tasutud või tasumisele kuuluv käibemaks');
        VATDescriptionList.Add('5.4', '4) osaliselt ettevõtluses kasutatava sõiduauto soetamiselt ja sellise sõiduauto tarbeks kaupade soetamiselt ja teenuste saamiselt tasutud või tasumisele kuuluv käibemaks');
        VATDescriptionList.Add('6', 'Kauba ühendusesisene soetamine ja teise liikmesriigi maksukohustuslaselt saadud teenused kokku, sh');
        VATDescriptionList.Add('6.1', 'kauba ühendusesisene soetamine');
        VATDescriptionList.Add('7', 'Muu kauba soetamine ja teenuse saamine, mida maksustatakse käibemaksuga, sh');
        VATDescriptionList.Add('7.1', 'erikorra alusel maksustatava kinnisasja, metallijäätmete, väärismetalli ja metalltoodete soetamine (KMS § 411)');
        VATDescriptionList.Add('8', 'Maksuvaba käive ');
        VATDescriptionList.Add('9', 'Erikorra alusel maksustatava kinnisasja, metallijäätmete, väärismetalli ja metalltoodete käive (KMS § 411) ning teises liikmesriigis paigaldatava või kokkupandava kauba maksustatav väärtus');
        VATDescriptionList.Add('10', 'Täpsustused');
        VATDescriptionList.Add('11', 'Täpsustused');
        VATDescriptionList.Add('12', 'Tasumisele kuuluv käibemaks (lahter 4 + lahter 41 – lahter 5 + lahter 10 – lahter 11)');
        VATDescriptionList.Add('13', 'Enammakstud käibemaks (lahter 4 + lahter 41 – lahter 5 + lahter 10 – lahter 11)');
        exit(VATDescriptionList);
    end;
}