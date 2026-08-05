public with sharing class VATValidationService {

    public class VATValidationRequest {
        @InvocableVariable(label='VAT Number' required=true)
        public String vatNumber;
    }

    public class VATValidationResult {
        @InvocableVariable(label='Validation Status')
        public String status;

        @InvocableVariable(label='Validation Message')
        public String message;
    }

    @InvocableMethod(label='Validate VAT Number' description='Calls an external service to validate the provided VAT number. Returns a status and message.')
    public static List<VATValidationResult> validate(List<VATValidationRequest> requests) {
        List<VATValidationResult> results = new List<VATValidationResult>();

        for (VATValidationRequest request : requests) {
            VATValidationResult result = new VATValidationResult();
            result.status = 'Pending';
            result.message = 'VAT validation service not yet configured';
            results.add(result);
        }

        return results;
    }
}
