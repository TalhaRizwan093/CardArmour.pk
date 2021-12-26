package com.example.cardarmourbackendmongodb.Service;

import com.example.cardarmourbackendmongodb.Dto.CustomerDto;
import com.example.cardarmourbackendmongodb.Dto.FeedbackDto;
import com.example.cardarmourbackendmongodb.Dto.SingleFeedbackDto;
import com.example.cardarmourbackendmongodb.Model.*;
import com.example.cardarmourbackendmongodb.Repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Service
public class CustomerService {

    @Autowired
    CustomerRepository customerRepository;

    public Customer login(String username, String password){
        try{
            return customerRepository.findByUsernameAndPassword(username,password);
        } catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public List<Customer> getAllCustomers() {
        try{
            return customerRepository.findAll();
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }

    public void  insertCustomer(Customer customer)  {
        try{
            customerRepository.insert(customer);
        } catch (Exception e){
            e.printStackTrace();
        }

    }

   public Customer getCustomerOnUsername(String username){
        try{
            return customerRepository.findByUsername(username);
        } catch(Exception e){
            e.printStackTrace();
            return null;
        }
   }

   public void addBankAccount(String username, Bankaccount bankaccount){
        try{
            Customer customer = customerRepository.findByUsername(username);
            customer.setBankaccount(bankaccount);
            customerRepository.save(customer);
        } catch(Exception e){
            e.printStackTrace();
        }
   }

   public void addVirtualCard(String username,String expdate){
        try{
            Virtualcard virtualcard = new Virtualcard(generateCardNumber(),generatecvc(),expdate);
            Customer customer = customerRepository.findByUsername(username);
            customer.setVirtualcard(virtualcard);
            customerRepository.save(customer);
        } catch (Exception e){
            e.printStackTrace();
        }
   }

    public void addFeedback(String username, Feedback feedback){
        try{
            Customer customer = customerRepository.findByUsername(username);
            List<Feedback> feedbacks = new ArrayList<>();
            List<Feedback> recieved = new ArrayList<>();
            recieved.add(feedback);
            feedbacks = customer.getFeedbacks();
            if(feedbacks.isEmpty()){
                customer.setFeedbacks(recieved);
            } else if(feedbacks.size()==1){
                Feedback temp = feedbacks.get(0);
                if(temp.getDetails() == null){
                    feedbacks.remove(0);
                    feedbacks.add(feedback);
                }
                else{
                    feedbacks.add(feedback);
                    customer.setFeedbacks(feedbacks);
                }
            } else {
                feedbacks.add(feedback);
                customer.setFeedbacks(feedbacks);
            }
            customerRepository.save(customer);
        } catch (Exception e){
            e.printStackTrace();
        }
    }



    public List<Transactions> getTransactions(String username){
       try{
           Customer customer = customerRepository.findByUsername(username);
           return customer.getTransactions();
       } catch (Exception e){
           e.printStackTrace();
           return null;
       }
   }

   public Bankaccount getBankAccount(String username){
        try{
            Customer customer = customerRepository.findByUsername(username);
            return customer.getBankaccount();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
   }

    public Virtualcard getVirtualCard(String username){
        try{
            Customer customer = customerRepository.findByUsername(username);
            return customer.getVirtualcard();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

   public void deleteBankAccount(String username){
       try{
           Customer customer = customerRepository.findByUsername(username);
           customer.setBankaccount(null);
           customerRepository.save(customer);
       }catch (Exception e){
           e.printStackTrace();
       }
   }

    public void deleteVirtualCard(String username){
        try{
            Customer customer = customerRepository.findByUsername(username);
            customer.setVirtualcard(null);
            customerRepository.save(customer);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public List<Transactions> getFiveTransactions(String username){
        try{
            Customer customer = customerRepository.findByUsername(username);
            List<Transactions> transactions = new ArrayList<>();
            List<Transactions> temp = new ArrayList<>();
            transactions = customer.getTransactions();
            if(transactions.size()<=5){
                return transactions;
            } else{
                for(int i = 0;i<5;i++){
                    temp.add(transactions.get(i));
                }
                return temp;
            }
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public List<Feedback> getFeedbackByUsername(String username){
        try{
            Customer customer = customerRepository.findByUsername(username);
            return customer.getFeedbacks();
        } catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public void addSetting(Setting setting, String username){
        try{
            Customer customer = customerRepository.findByUsername(username);
            customer.setSetting(setting);
            customerRepository.save(customer);
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public Setting getSetting(String username){
        try{
            Customer customer = customerRepository.findByUsername(username);
            return customer.getSetting();
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public void updateUser(String username, CustomerDto customerDto){
        try{
            Customer customer = customerRepository.findByUsername(username);
            customer.setUsername(customerDto.getUsername());
            customer.setPassword(customerDto.getPassword());
            customer.setName(customerDto.getName());
            customer.setGender(customerDto.getGender());
            customer.setCnic(customerDto.getCnic());
            customer.setDateofbirth(customerDto.getDateofbirth());
            customer.setPhonenumber(customerDto.getPhonenumber());
            customer.setEmail(customerDto.getEmail());
            customer.setLocation(customerDto.getLocation());
            customerRepository.save(customer);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public List<FeedbackDto> getAllFeedbacks(){
        try{
            List<FeedbackDto> feedbackDtos = new ArrayList<>();
            List<Customer> customers = customerRepository.findAll();
            for(int i = 0;i<customers.size();i++){

                List<Feedback> tempFeedback1 = customers.get(i).getFeedbacks();
                if( tempFeedback1.size() <= 1 && tempFeedback1.get(0).getDetails() == null ){
                    continue;
                } else{
                    List<Feedback> temp = customers.get(i).getFeedbacks();
                    for(int j=0;j<temp.size();j++){
                        FeedbackDto tempFeedback = new FeedbackDto();
                        tempFeedback.setUsername(customers.get(i).getUsername());
                        tempFeedback.setDetails(temp.get(j).getDetails());
                        tempFeedback.setResponse(temp.get(j).getResponse());
                        feedbackDtos.add(tempFeedback);
                    }
                }
            }
            return feedbackDtos;
        } catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public void deleteCustomer(String username){
        try{
            customerRepository.deleteCustomerByUsername(username);
        } catch(Exception e){
            e.printStackTrace();
        }
    }

    public void addResponseToFeedback(SingleFeedbackDto feedback){
        try{
            Customer customer = customerRepository.findByUsername(feedback.getUsername());
            List<Feedback> oldFeedbacks = customer.getFeedbacks();
            List<Feedback> latestFeedbacks = new ArrayList<>();
            for(int i=0;i<oldFeedbacks.size();i++){
                Feedback feedbackTemp = oldFeedbacks.get(i);
                Feedback feedbackTemp2 = feedback.getFeedback();
                if(feedbackTemp.getDetails().equals(feedbackTemp2.getDetails())){
                    latestFeedbacks.add(feedbackTemp2);
                } else {
                    latestFeedbacks.add(oldFeedbacks.get(i));
                }
            }
            customer.setFeedbacks(latestFeedbacks);
            customerRepository.save(customer);
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public int totalSpending(String username){
        try{
            Customer customer = customerRepository.findByUsername(username);
            List<Transactions> transactions = customer.getTransactions();
            int spending=0;
            for(int i=0;i<transactions.size();i++){
                spending = spending + transactions.get(i).getAmount();
            }
            return spending;
        } catch(Exception e){
            e.printStackTrace();
            return 0;
        }
    }

    public int countTransactions(String username){
        try{
            Customer customer = customerRepository.findByUsername(username);
            List<Transactions> transactions = customer.getTransactions();
            if(transactions.size()==1 && transactions.get(0).getAmount()==0){
                return 0;
            } else{
                return transactions.size();
            }
        } catch(Exception e){
            e.printStackTrace();
            return 0;
        }
    }

    public List<Customer> getByCountry(String countryname){
        try{
            return customerRepository.getCustomerByLocationCountry(countryname);
        } catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }








//----------------------------------------------------------------------------------------------------------------------

    private String generatecvc(){
        Random rand = new Random();
        String cvc = ""+rand.nextInt(1000);
        return cvc;
    }

    private String generateCardNumber(){
        String cardNumber="";
        Random rand = new Random();
        for(int i = 0;i<4;i++){
            cardNumber += rand.nextInt(10000);
            if(i<3){
                cardNumber += "-";
            }
        }
        return cardNumber;
    }

}
